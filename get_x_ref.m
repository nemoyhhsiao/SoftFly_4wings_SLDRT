t   = rst_sim_p.time;
x   = rst_sim_p.signals.values;
v   = rst_sim_v.signals.values;
R   = rst_sim_R.signals.values;
w   = rst_sim_ome.signals.values;
F   = rst_thrust_b.signals.values;
tau = [rst_torque_b.signals(1).values, rst_torque_b.signals(2).values, rst_torque_b.signals(3).values]; 

f   = zeros(size(rst_motor_thrusts_mg.signals.values)); 

quat = zeros(length(t), 4); 

% TODO: Need to rotate by 90 like in RTNMPC controller block?
R_WIs = zeros(size(R)); 
R_IBs = zeros(size(R)); 

for i = 1:length(t)
    [R_WI, R_IB] = compute_yaw_fixed_frame(R(:, :, i), true);

    R_WIs(:, :, i) = R_WI;
    R_IBs(:, :, i) = R_IB;
    
    curr_F   = F(i);
    curr_tau = R_IB * tau(i,:)'; % Rotate moment into yaw-fixed body frame
    f(i, :)  = wrench2thrusts(curr_tau, curr_F, rbt); 
    
    quat(i, :) = rotm2quat(R_WI); 
end

q    = [quat(:,2:4) quat(:,1)]; % Reorder quaternion (w, x, y, z)
u    = f * 4 / mdl.g / rbt.m - 1; % normalize thrusts

time  = t;
x_ref = [x, v, q, w, u];
u_ref = u;

save("data/feasible_fast_vertical_circle_w_drag_ui=0p55.mat", "t", "x_ref", "u_ref")

figure()
plot(u_ref)

function motors_thrust = wrench2thrusts(torque, total_thrust, rbt)

    % torque in N*m
    % total_thrust in N

    % thrust of each unit
    thrust = total_thrust / 4;

    % get force from body x/y axis torque (consider moment arm)
    r = torque(1) / rbt.lt / 4; % force on each unit (mgf)
    p = torque(2) / rbt.ld / 4; % force on each unit (mgf)

    % map force to each unit
    att = [
        - r - p;
        + r - p;
        + r + p;
        - r + p];

    % prioritize attitude over thrust
    min_att  = min(att);
    if (thrust < -min_att)
        thrust = -min_att; 
    end

    % map thrust and torque to each unit 
    m1 = thrust + att(1);
    m2 = thrust + att(2);
    m3 = thrust + att(3);
    m4 = thrust + att(4);

    % create vector
    motors_thrust = [m1; m2; m3; m4];
end
