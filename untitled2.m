    

ctr.gain.at3 = 44.7200;
ctr.gain.at2 = 709.8000;
ctr.gain.at1 = 5.7122e+03;
ctr.gain.at0 = 1.4280e+04;

R1     = R(:,1);
R2     = R(:,2);
R3     = R(:,3);
wx     = Omega(1);
wy     = Omega(2);
wz     = Omega(3);



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