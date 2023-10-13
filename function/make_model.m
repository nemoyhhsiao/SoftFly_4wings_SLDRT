function [mdl] = make_model(flight_time)
    
    mdl.flight_time = flight_time; % actual flapping time
    mdl.exe_time    = mdl.flight_time + 6; % computer running time to data logging
    mdl.f = 1e3;
    mdl.f_high  = 10e3;
    mdl.T = 1 / mdl.f;
    mdl.T_high  = 1/mdl.f_high;
    mdl.i_delay = 2.0;
    mdl.s_delay = 0.8;
    mdl.rt = flight_time + mdl.i_delay + 1;
    mdl.flight_time = flight_time;
    mdl.g = 9.80655;
    mdl.drag_force.linear = 2.5e-3;
    mdl.vlp.n = 2;
    mdl.vlp.d = [1 -exp(-2*mdl.T*80)]; % Assuming a 2nd-order Butterworth filter.
    mdl.vlp.n2 = 3;
    mdl.vlp.d2 = [1 -exp(-3*mdl.T*60)]; % Another filter.
    mdl.f1 = 500;
    mdl.zf1 = exp(-mdl.f1*mdl.T);
    mdl.f2 = 100;  
    mdl.zf2 = exp(-mdl.f2*mdl.T);
    mdl.fd_lim = 3.0;
    mdl.max_v_vec = [1950 1950 1950 1900];
    mdl.hovering_vec = [1400 1600 1630 1470];
    mdl.max_v = max(mdl.max_v_vec);
    mdl.freq_vec = [400 400 400 400];
end
