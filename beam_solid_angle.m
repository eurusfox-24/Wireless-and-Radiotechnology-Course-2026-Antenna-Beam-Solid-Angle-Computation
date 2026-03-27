clc;
close all;
clear all;

% Get boundaries for theta
tmin = input('The lower bound of theta in degree=');
tmax = input('The upper bound of theta in degree=');

% Get boundaries for phi
pmin = input('The lower bound of phi in degree=');
pmax = input('The upper bound of phi in degree=');

% Convert to radians and create arrays
theta = (tmin:tmax) * (pi/180);
phi = (pmin:pmax) * (pi/180);

% Calculate step sizes
dth = theta(2) - theta(1);
dph = phi(2) - phi(1);

% Create 2D grid
[THETA, PHI] = meshgrid(theta, phi);

% Get pattern inputs
x = input('The field pattern : E(THETA,PHI)='); 
v = input('The power pattern: P(THETA,PHI)=','s'); 

% Calculate Beam Area (Solid Angle) using numerical integration
% Prad = double integral of Pn * sin(theta) d(theta) d(phi)
Pn = x.^2;
Prad = sum(sum(Pn .* sin(THETA) .* dth .* dph));

% Print input parameters
fprintf('\n Input Parameters: \n-------------------- ');
fprintf('\n Theta =%2.0f', tmin);
fprintf(' : %2.0f', dth*180/pi);
fprintf(' : %2.0f', tmax);
fprintf('\n Phi =%2.0f', pmin);
fprintf(' : %2.0f', dph*180/pi);
fprintf(' : %2.0f', pmax);
fprintf('\n POWER PATTERN : %s', v);

% Print output parameters
fprintf('\n \n Output Parameters: \n-------------------- \n');
fprintf('BEAM AREA (steradians) = %3.2f\n', Prad);
