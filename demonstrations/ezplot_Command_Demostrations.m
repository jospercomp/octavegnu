clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','ezplot Command Demostrations');
subplot(2,2,1) 
## sinc function using function handle
f = @(x) sin (pi*x) ./ (pi*x);
ezplot (f);
subplot(2,2,2) 
## example of a function string and explicit limits
ezplot ("1/x", [-2 2]);
subplot(2,2,3) 
## parameterized function example over -2*pi <= t <= +2*pi
ezplot(@cos, @sin);
## implicit function of 2 variables
subplot(2,2,4) 
ezplot(inline ("x^2 - y^2 - 1"));