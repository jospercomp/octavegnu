clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','fplot Command Demonstrations');
subplot(1,3,1) 
 fplot (@cos, [0, 2*pi]);
 title ("fplot() single function");
subplot(1,3,2)
 fplot ("[cos(x), sin(x)]", [0, 2*pi]);
 title ("fplot() multiple functions");
subplot(1,3,3)
 fh = @(x) sin (pi*x) ./ (pi*x);
 fplot (fh, [-5, 5]);
 title ("fplot() sinc function (possible division by 0, near 0)");
