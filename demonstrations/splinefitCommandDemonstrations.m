clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','splinefit Command Demonstrations');
subplot(2,2,1)  
 % Noisy data
 x = linspace (0, 2*pi, 100);
 y = sin (x) + 0.1 * randn (size (x));
 % Breaks
 breaks = [0:5, 2*pi];
 % Fit a spline of order 5
 pp = splinefit (x, y, breaks, "order", 4);
 plot (x, y, "s", x, ppval (pp, x), "r", breaks, ppval (pp, breaks), "+r");
 xlabel ("Independent Variable");
 ylabel ("Dependent Variable");
 title ("Fit a piece-wise polynomial of order 4",'fontsize',20);
 legend ({"data", "fit", "breaks"});
 axis tight
 ylim auto
subplot(2,2,2)  
 % Noisy data
 x = linspace (0,2*pi, 100);
 y = sin (x) + 0.1 * randn (size (x));
 % Breaks
 breaks = [0:5, 2*pi];
 % Fit a spline of order 3 with periodic boundary conditions
 pp = splinefit (x, y, breaks, "order", 2, "periodic", true);
 plot (x, y, "s", x, ppval (pp, x), "r", breaks, ppval (pp, breaks), "+r");
 xlabel ("Independent Variable");
 ylabel ("Dependent Variable");
 title ("Fit a periodic piece-wise polynomial of order 2",'fontsize',20);
 legend ({"data", "fit", "breaks"});
 axis tight
 ylim auto
subplot(2,2,3)  
 % Noisy data
 x = linspace (0, 2*pi, 100);
 y = sin (x) + 0.1 * randn (size (x));
 % Breaks
 breaks = [0:5, 2*pi];
 % Constraints: y(0) = 0, y'(0) = 1 and y(3) + y"(3) = 0
 xc = [0 0 3];
 yc = [0 1 0];
 cc = [1 0 1; 0 1 0; 0 0 1];
 con = struct ("xc", xc, "yc", yc, "cc", cc);
 % Fit a cubic spline with 8 pieces and constraints
 pp = splinefit (x, y, 8, "constraints", con);
 plot (x, y, "s", x, ppval (pp, x), "r", breaks, ppval (pp, breaks), "+r");
 xlabel ("Independent Variable");
 ylabel ("Dependent Variable");
 title ("Fit a cubic spline with constraints",'fontsize',20);
 legend ({"data", "fit", "breaks"});
 axis tight
 ylim auto
subplot(2,2,4)  
 % Noisy data
 x = linspace (0, 2*pi, 100);
 y = sin (x) + 0.1 * randn (size (x));
 % Breaks
 breaks = [0:5, 2*pi];
 xc = [0 0 3];
 yc = [0 1 0];
 cc = [1 0 1; 0 1 0; 0 0 1];
 con = struct ("xc", xc, "yc", yc, "cc", cc);
 % Fit a spline of order 6 with constraints and periodicity
 pp = splinefit (x, y, breaks, "constraints", con, "order", 5, "periodic", true);
 plot (x, y, "s", x, ppval (pp, x), "r", breaks, ppval (pp, breaks), "+r");
 xlabel ("Independent Variable");
 ylabel ("Dependent Variable");
 title ("Fit a 5th order piece-wise periodic polynomial with constraints", ...
 'fontsize',20);
 legend ({"data", "fit", "breaks"});
 axis tight
 ylim auto