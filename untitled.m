    mdl.f           = 2e3;          % frequency of the controller
    mdl.f_high      = 10e3;         % frequency of the sine wave generator
    mdl.T           = 1 / mdl.f;
    mdl.T_high      = 1/mdl.f_high;