
[torque, F] = nemo(r, r_dot, R, Omega) 
time = 0.0; 
r_origin = zeros(3, 1);


[torque_cmd, f_cmd] = nn(r, r_dot,  R,  Omega, r_origin, time, ctr, rbt, mdl)



function [torque_cmd, f_cmd] = nn(r, r_dot,  R,  Omega, r_origin, time, ctr, rbt, mdl)

    q_prev = [ 0, 0, 0, 1]';  

    % r: curr pos
    % r_dot: curr vel
    % R: current attitude
    % Omega: current body rates
    % rd : des pos
    % rd_d: des vel
    % Out: 
    % cmd_B_thrust_z is thrust force on z axis in body (B) frame [N]


    % Position and velocity
    r = r(:);                       % position [m]
    r_dot = r_dot(:);               % velocity [m/s]

    % Ensure signals have expected shape
    R_original = unflatten_rotm(R(:));    % rotation matrix

    % Hack around for the incorrect x and y

    % rotate 90 deg to get to the frame NN is trained
    R_wpw = [0 1 0 ;
            -1 0 0;
             0 0 1;];

    if ctr.rtmpc.change_frame
       
        % rotate all the states by 90
        R     = R_wpw * R_original * R_wpw';
        r     = R_wpw*r;
        r_dot = R_wpw*r_dot;
        Omega = R_wpw*Omega(:);
    else
        R = R_original;

    end
    


    % Angular velocity
    % Omega = Omega(:);               % ang vel [rad/s]


    % Policy-specific variables (move out)
    %r0_policy = [0.0; 0.0; 0.1];    % this is the origin for the learned policy in [m]
    % r0_policy = ctr.rtnmpc.r0_policy;
    f_ext = zeros(3,1);             % TODO : in the future, f_ext will need to be converted in "bee" units

    % Compute yaw-fixed reference frame
    R_IB = eye(3); % needed by simulink compiler
    R_WI = eye(3);
    if ctr.rtnmpc.yaw_fixed_frame.en
        [R_WI, R_IB] = compute_yaw_fixed_frame(R, ctr.rtnmpc.yaw_fixed_framw.align_on_x);
    
        % Compute attitude quaternion
        q = quat_scalar_last_from_rotm(R_WI);

        % logging
        ypr_WI = rotm2eul(R_WI)';
        ypr_IB = rotm2eul(R_IB)';
        ypr_WB = rotm2eul(R)';
    else
        q = quat_scalar_last_from_rotm(R);

        ypr_WI = rotm2eul(eye(3))';
        ypr_IB = rotm2eul(eye(3))';
        ypr_WB = rotm2eul(R)';
    end

    % Kusaka, Takashi, and Takayuki Tanaka. "Stateful Rotor for Continuity 
    % of Quaternion and Fast Sensor Fusion Algorithm Using 9-Axis Sensors." 
    % Sensors 22.20 (2022): 7989.
    q = sign(q'*q_prev)*q; % stateful rotor
    
    if time < 0
        r_origin = r;
    end

    % Set current state
    x = [r(:) - r_origin(:) - ctr.rtmpc.r_origin_offset; r_dot; q; Omega;]; % [m, m, m, m/s, m/s, m/s, 1-norm, ..., 1-norm]
    x_in = x(:).*ctr.rtmpc.in_scaling(1:13); % column vector; convert to "bee" units [dm, ..., dm, dm/s, ..., dm/s, 1-norm, ..., 1-norm]
    
    % Call NN policy:
    % (1) normalize inputs in -1, 1
    obs = [x_in(:); f_ext; max(time,0)]/ctr.rtmpc.max_obs; % column vector; convert to "bee" units

    % Saturate NN input so that is within normalization/training range
    % (-1,1) post normalization
    x_lim = ones(length(obs),1);
    obs = max(min(obs, x_lim), -x_lim);
    
    u_as_float = ctr.rtmpc.max_act*ctr.rtmpc.out_scaling.*rtmpcnn(obs, ctr.rtmpc.nnparam); % ub -1, 1
    u = cast(u_as_float, 'double');

    % Advance to next timestep - until done
    time = min(time + mdl.T, ctr.rtmpc.t_max);

    m = rbt.m;
    g = mdl.g;
    
    u = u(:);

    % saturate NN output to max_act
    u_bound = [ctr.rtmpc.max_act; ctr.rtmpc.max_act; ctr.rtmpc.max_act; ctr.rtmpc.max_act];
    u = max(min(u, u_bound), -u_bound);
    
    % saturate control inputs for safety
    % u_lim = [ctr.rtmpc.lim.omega; ctr.rtmpc.lim.omega; ctr.rtmpc.lim.omega; ctr.rtmpc.lim.f_cmd_norm];
    u_lim = [ctr.rtmpc.lim.torque_x; ctr.rtmpc.lim.torque_y; ctr.rtmpc.lim.torque_z; ctr.rtmpc.lim.f_cmd_norm];
    u = max(min(u, u_lim), -u_lim);
    
    % unpack control inputs
    I_omega_d = u(1:3);         % in [rad/s]
    f_cmd_normalized = u(4);    % in -1, 1
    
    % I_omega_d(2) = 0.0; % TODO: ANDREA: TUNE AND REMOVE THIS

    if ctr.rtnmpc.yaw_fixed_frame.en
        B_omega_d = R_IB'*I_omega_d;
    else
        B_omega_d = I_omega_d;
    end

    if ctr.rtmpc.change_frame
        B_omega_d = R_wpw' * B_omega_d;
    end
    B_omega_d(3) = 0.0; % no commands on z :(
    
    % thust force
    f_cmd = m * g * (1.0 + f_cmd_normalized); % in [N]

    % torque
    torque_cmd = B_omega_d;

end

function q = quat_scalar_last_from_rotm(R)

    % Compute attitude quaterniona from rotation matrix
    % and ensure positive scalar part
    q_wxyz = rotm2quat(R);  % scalar first
    q_wxyz = q_wxyz(:);
    q = [q_wxyz(2:4); q_wxyz(1)]; 

end







function [torque, F] = nemo(r, r_dot, R, Omega) 

ctr.gain.at3 = 44.7200;
ctr.gain.at2 = 709.8000;
ctr.gain.at1 = 5.7122e+03;
ctr.gain.at0 = 1.4280e+04;

J      =    1.0e-06 .*  [0.0438         0         0
         0    0.0438         0
         0         0    0.1752];

R1     = R(:,1);
R2     = R(:,2);
R3     = R(:,3);
wx     = Omega(1);
wy     = Omega(2);
wz     = Omega(3);

rbt.m = 7.6000e-04;

acc_net_b = 0;
rd_dddd = zeros(3,1);
rd_ddd = zeros(3,1);
rd_dd = zeros(3,1);
rd_d = zeros(3,1);
rd = zeros(3,1);

Dr     = r-rd;
Dr_dot = r_dot-rd_d;

mdl.g = 9.81;

ctr.gain.atmg.factor.x = 1;
ctr.gain.atmg.factor.y = 1;

ctr.gain.al0  = 150 * 0.5;  % p gain [0.55]
ctr.gain.al1  = 30 * 0.65;   % d gain [0.9]
ctr.gain.ali  = 15 * 0.7 *0.001;    % i gain [15]
ctr.gain.alfd = 0.2;           % feedforward (tether weight) [0.7 - 1.5]



% linear feedforward (for the tether weight)
% ffwd = mdl.g * max(0,rd(3)*ctr.gain.alfd);

% desired net acceleration for the 2nd-order system (not taking r_dotdot)
a_net = rd_dd(3) - ctr.gain.al1*( r_dot(3)-rd_d(3) ) - ctr.gain.al0*( r(3)-rd(3) );

% gravity + net acceleration + integral term + feedforward
a_w = mdl.g + a_net; % + int_tf(4) + ffwd + ctr.thrust_offset; % world frame

% world to body frame
a_b = a_w/R(3,3);

% % saturation
% a = max(min(a_b, mdl.g + 5), mdl.g - 3.0); % during hovering.

% convert accelearation to Newton
F = a_b*rbt.m;



% % get desired angular accelaration
    des_wx_dot = (- dot(R2,rd_dddd)  ...
                  - ctr.gain.at3*( (mdl.g+max(-0.1,acc_net_b))*wx+dot(R2,rd_ddd) )  ...
                  - ctr.gain.at2*( dot(R2,mdl.g*[0;0;1]+rd_dd) )  ...
                  + ctr.gain.at1*( dot(R2,Dr_dot) )  ...
                  + ctr.gain.at0*( dot(R2,Dr) ) ) ...
                  /((mdl.g+max(-0.5,acc_net_b*ctr.gain.atmg.factor.x))); % 

    des_wy_dot = (+ dot(R1,rd_dddd)  ...
                  - ctr.gain.at3*( (mdl.g+max(-0.1,acc_net_b))*wy-dot(R1,rd_ddd) )  ...
                  - ctr.gain.at2*( dot(R1,-mdl.g*[0;0;1]-rd_dd) )  ...
                  - ctr.gain.at1*( dot(R1,Dr_dot) )  ...
                  - ctr.gain.at0*( dot(R1,Dr) )) ...
                  / ((mdl.g+max(-0.5,acc_net_b*ctr.gain.atmg.factor.x))); % + ...

      torque = J*[des_wx_dot; des_wy_dot; 0];

end