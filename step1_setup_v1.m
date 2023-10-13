%% 

clc
clear

% Add path to subfolder
addpath('./model');
addpath('./function');
addpath("rtnmpc")
addpath("rtnmpc/nn_weigths")
addpath("torque_observer")
addpath("pos_vel_estimator")
addpath("ukf")

% Simulink model
model_name = 'controller13';
load_system(model_name) % if it shows model not loaded, run the following line in command window

% Load look-up table for thrust to voltage mapping
load('thrust2voltage_lut_20230829.mat')

% Use simulation or Vicon data
rsim.en = 1;

% Flight time for the model
flight_time = 8;

% Initialize model parameters
mdl = make_model(flight_time);

% Initialize robot parameters
rbt = make_robot(mdl);

% Initialize controller parameters
ctr = make_controller();

% Initialize robot simulation parameters
rsim = make_robot_simulation(rbt,mdl,rsim);

% Initialize rtnmpc & lee's controller parameters
ctr = make_rtnmpc_controller(ctr, mdl,rbt); % -> nonlinear mpc & Lee's

% Initialize external torque observer
ctr = make_external_torque_observer(rsim, mdl, ctr);

% Initialize position & velocity estimator
ctr = make_pos_vel_estimator(rsim, mdl, ctr);

% Initialize UKF
% ukf_sys = create_ukf_sys(force_dist, torque_dist, rbt, mdl, rsim);
[ukf_sys, ukf_s0, ukf_P0_flat, ukf_prediction_time, ukf_use_prediction] = controller_setup_ukf(rbt, mdl, rsim);

% Check model timing
if (mdl.exe_time - mdl.flight_time) < 6
    error("-->> execution time is too short")
end

% set_param('controller_v13', 'SimulationCommand', 'start');
% out = sim('controller_v13','SimulationMode','normal'); % RapidAccelerator

% Use simulator or real-time hardware interface
if rsim.en
    set_param(strcat(model_name, '/Flying Simulation'), 'commented', 'off'); % using it
    set_param(strcat(model_name, '/UDP send to Arduino'), 'commented', 'on'); % comment out
    set_param(strcat(model_name, '/Vicon UDP receive'), 'commented', 'on'); % comment out
    warning("-->> using simulator")
    out = sim(model_name, 'SimulationMode','normal');

else
    set_param(strcat(model_name, '/Flying Simulation'), 'commented', 'on'); % comment out simulator
    set_param(strcat(model_name, '/UDP send to Arduino'), 'commented', 'off'); % using realtime block
    set_param(strcat(model_name, '/Vicon UDP receive'), 'commented', 'off'); % using realtime block
    warning("-->> using Vicon data")
end


