% Flight conditions and atmospheric parameters derived from AVL for the 
% University of Colorado's MODEFLIER Unmanned Aircraft
%
%   File created by: Eric Frew
%   Modified by: Henk Wolda
%   Data taken from files generated by David Thomas.
%       - Derivatives come from AVL analysis
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% All dimensional parameters in SI units
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% STUDENTS MUST COMPLETE THIS FUNCTION USING INFORMATION 
% FROM THE AVL FILE "Tempestv2.st" 
%

aircraft_parameters.g = 9.81;           % Gravitational acceleration [m/s^2]

%Aircraft geometry parameters
aircraft_parameters.S = 0.4252; %[m^2]
aircraft_parameters.b = 2.5908; %[m]
aircraft_parameters.c = 0.1641; %[m]
aircraft_parameters.AR = aircraft_parameters.b*aircraft_parameters.b/aircraft_parameters.S;

% Aircraft mass parameters
aircraft_parameters.m = 2.148; %[kg]
aircraft_parameters.W = aircraft_parameters.m*aircraft_parameters.g; %[N]

% Inertias from Solidworks
aircraft_parameters.Ix = 0.152; %[kg m^2]
aircraft_parameters.Iy = 0.047; %[kg m^2]
aircraft_parameters.Iz = 0.19; %[kg m^2]
aircraft_parameters.Ixz = 0; %[kg m^2]

% Drag terms
aircraft_parameters.e = 0.9515; %[-], AVL, Oswald's efficiency factor
aircraft_parameters.K = 1/(pi*(aircraft_parameters.b^2/aircraft_parameters.S)*aircraft_parameters.e); %drag polar coefficient (CD = CDpa + kCL^2)
aircraft_parameters.CDmin = 0.04; %[-] This is the parasite drag. Total drag is combination of parasite drag and induced drag.

% Engine parameters
aircraft_parameters.Sprop = 0.0507; %[m^2]
aircraft_parameters.Cprop = 1;
aircraft_parameters.kmotor = 25;

% Zero angle of attack aerodynamic forces and moments
aircraft_parameters.CL0 = 0.2176;
aircraft_parameters.Cm0 = -0.0165;

aircraft_parameters.CY0 = 0;
aircraft_parameters.Cl0 = 0;
aircraft_parameters.Cn0 = 0;

% Longtidunal nondimensional stability derivatives from AVL
aircraft_parameters.CLalpha = 6.160505;
aircraft_parameters.Cmalpha = -2.156499;
aircraft_parameters.CLq = 11.254711;
aircraft_parameters.Cmq = -30.168705;

% Neglected parameters, check units below if incorporated later
aircraft_parameters.CLalphadot = 0; 
aircraft_parameters.Cmalphadot = 0; 

% Lateral-directional nondimensional stability derivatives from AVL
aircraft_parameters.CYbeta = -0.326941;
aircraft_parameters.Clbeta = -0.10789;
aircraft_parameters.Cnbeta = 0.039154;
aircraft_parameters.CYp = -0.111534;
aircraft_parameters.Clp = -0.640997;
aircraft_parameters.Cnp = -0.061923;
aircraft_parameters.Clr = 0.175955;
aircraft_parameters.Cnr = -0.034575;
aircraft_parameters.CYr = 0.150337;

%Control surface deflection parameters
% Elevator
aircraft_parameters.CLde = 0.00869*180/pi;
aircraft_parameters.Cmde = -0.033837*180/pi;
  
% Aileron
aircraft_parameters.CYda = -0.001057*180/pi;
aircraft_parameters.Clda = -0.004875*180/pi;
aircraft_parameters.Cnda = -0.000194*180/pi;
 
% Rudder
aircraft_parameters.CYdr = 0.00317*180/pi;
aircraft_parameters.Cldr = 0.00007*180/pi;
aircraft_parameters.Cndr = -0.00074*180/pi;