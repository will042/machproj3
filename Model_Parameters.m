%% Hydraulic Lift Simulation Parameters

% Loading Force
params.load.mass  = 1000;       % Mass of load (kg)
params.load.g     = -9.81;      % Gravitational constant (m/s^2)


params.direction = 1;           % Specify Direction: 1 = Forward Stroke, 0 = Return



%% Conditional for Flow Direction
if params.direction == 1
    params.cyl.pid    =  0;       % Piston inital distance from cap
    params.dvalve.vac =  0.052;   % Valve actuator displacement (in)
else
    params.cyl.pid    =  84;      % Piston inital distance from cap
    params.dvalve.vac = -0.052;   % Valve actuator displacement (in)
end



%% System Specifications

% Hydraulic Fluid (Specifications for ISO VG 46)
params.fluid.temp = 40;         % System temperature (deg C)
params.fluid.ta   = 0.005;      % Relative amount of trapped air
params.fluid.vdf  = 1;          % Viscosity derating factor
params.fluid.rho  = 867.346;    % Fluid Density (kg/m^3)
params.fluid.vis  = 45.7333;    % Fluid Viscosity (cSt)
params.fluid.bmod = 1.4815e+09; % Fluid Bulk modulus at atm (Pa)


% Fixed-Displacement Pump
params.pump.omega = 2500;       % Angular velocity of input shaft (rpm)
params.pump.disp  = 462/2500;   % Pump displacement (in^3/rev)
params.pump.n_vel = 2500;       % Nominal shaft angular velocity (rpm)
params.pump.n_dp  = 3200;       % Nominal pressure gain (psi)
params.pump.n_kv  = 46;         % Nominal kinematic viscosity (cSt)
params.pump.n_rho = 871;        % Nominal fluid density (kg/m^3)
params.pump.v_eff = 0.92;       % Volumetric efficiency at nominal conditions
params.pump.n_l_T = 0.05;       % No-load torque (N*m)
params.pump.ftvdp = 0.6e-6;     % Friction torque vs. pressure gain coefficient (N*m/Pa)


% Fluid Reservoir
params.res.pres = 0;            % Reservoir pressurization (gauge, psi)
params.res.vol  = 5;            % Initial fluid volume (gal)
params.res.rld  = 3/8;          % Return line diameter (in)


% Relief Valves
params.rvalve.psa = 3200;          % Pressure setting, valve A (psi)
params.rvalve.psb = 1500;          % Pressure setting, valve B (psi)
params.rvalve.ma  = (3/8)^2/4*pi;  % Maximum passage area (in^2)
params.rvalve.prr = 75;            % Pressure regulation range (psi)
params.rvalve.dc  = 0.999;         % Flow discharge coefficient
params.rvalve.la  = 1e-9 ;         % Leakage area (in^2)
params.rvalve.lpr = 0.999;         % Laminar flow pressure ratio

% Check Valve (Same for both)
params.cvalve.ma   = (3/8)^2/4*pi;  % Maximum passage area (in^2)
params.cvalve.cp   = 4;             % Cracking pressure (psi)
params.cvalve.mop  = 4.5;           % Maximum opening pressure (psi)
params.cvalve.dc   = 0.999;         % Flow discharge coefficient
params.cvalve.la   = 1e-9;          % Leakage area (in^2)
params.cvalve.lpr  = 0.999;         % Laminar flow pressure ratio


% Directional Valve (Same for both)
params.dvalve.ma   = (3/8)^2/4*pi;  % Maximum passage area (in^2)
params.dvalve.mo   = 0.052;         % Maximum opening (in)
params.dvalve.la   = 1e-9;          % Leakage area (in^2)
params.dvalve.dc   = 0.999;         % Flow discharge coefficient
params.dvalve.lpr  = 0.999;         % Laminar flow pressure ratio


% Hydraulic Lines
params.hline.lena = 4;             % Length of hydraulic line A (ft)
params.hline.lenb = 10;            % Length of hydraulic line B (ft)
params.hline.id   = 3/8;           % Tube internal diameter (in)
params.hline.lfc  = 64;            % Laminar friction constant for Darcy factor
params.hline.ael  = 1;             % Aggregate equivalent length of local resistances (ft)
params.hline.sruf = 15e-6;         % Internal surface roughness height (m)
params.hline.lfum = 2000;          % Laminar flow upper margin
params.hline.lfum = 4000;          % Turbulent flow lower margin


% Cylinder Friction
params.cylfric.pl  = 10;            % Preload force (N)
params.cylfric.cff = 1e-6;          % Coulomb friction force coefficient (N/Pa)
params.cylfric.bfc = 1;             % Breakaway friction increase coefficient
params.cylfric.vfc = 100;           % Viscous friction coefficient (N/(m/s))
params.cylfric.tac = 10;            % Transition approximation coefficient (s/m)
params.cylfric.lrt = 1e-4;          % Linear region velocity threshold (m/s)


% Hydraulic Cylinder
params.cyl.paa = 4^2*pi/4;          % Piston area A (in^2)
params.cyl.pab = (4^2-2.25^2)*pi/4; % Piston area B (in^2)
params.cyl.str = 84;                % Piston stroke (in)
params.cyl.dva = 6;                 % Dead volume A (in^3)
params.cyl.dvb = 6;                 % Dead volume B (in^3)
params.cyl.shr = 1.4;               % Specific heat ratio
params.cyl.cs  = 1.2e7;             % Contact stiffness (N/m)
params.cyl.cd  = 150;               % Contact damping (N/(m/s))
params.cyl.tr  = 1/32;              % Transition region (in)



% Pulley Bearing Friction
params.pul.frc = 0.002*2;             % (Friction coefficient)*(number of pulleys)










