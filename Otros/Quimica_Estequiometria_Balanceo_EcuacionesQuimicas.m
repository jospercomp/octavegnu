%A simple example comes from chemistry and 
%the need to obtain balanced chemical equations. 
%Consider the burning of hydrogen and oxygen to produce water.

%H2 + O2 --> H2O
%The equation above is not accurate. 
%The Law of Conservation of Mass requires that 
%the number of molecules of each type balance 
%on the left- and right-hand sides of the equation. 
%Writing the variable overall reaction with individual 
%equations for hydrogen and oxygen one finds:

%x1*H2 + x2*O2 --> H2O
%H: 2*x1 + 0*x2 --> 2
%O: 0*x1 + 2*x2 --> 1
clear all; close all; clc;
A = [ 2, 0; 0, 2 ];
b = [ 2; 1 ];
x = A \ b;