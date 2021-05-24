clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','inpolygon Command Demostrations');
subplot(1,2,1) 
xv = [ 0.05840, 0.48375, 0.69356, 1.47478, 1.32158, ...
        1.94545, 2.16477, 1.87639, 1.18218, 0.27615, ...
        0.05840 ];
 yv = [ 0.60628, 0.04728, 0.50000, 0.50000, 0.02015, ...
        0.18161, 0.78850, 1.13589, 1.33781, 1.04650, ...
        0.60628 ];
 xa = [0:0.1:2.3];
 ya = [0:0.1:1.4];
 [x,y] = meshgrid (xa, ya);
 [in,on] = inpolygon (x, y, xv, yv);
 inside = in & ! on;
 plot (xv, yv);
 hold on;
 plot (x(inside), y(inside), "@g");
 plot (x(! in), y(! in), "@m");
 plot (x(on), y(on), "@b");
 hold off;
 disp ("Green points are inside polygon, magenta are outside,");
 disp ("and blue are on boundary.");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2) 
 xv = [ 0.05840, 0.48375, 0.69356, 1.47478, 1.32158, ...
         1.94545, 2.16477, 1.87639, 1.18218, 0.27615, ...
         0.05840, 0.73295, 1.28913, 1.74221, 1.16023, ...
         0.73295, 0.05840 ];
  yv = [ 0.60628, 0.04728, 0.50000, 0.50000, 0.02015, ...
         0.18161, 0.78850, 1.13589, 1.33781, 1.04650, ...
         0.60628, 0.82096, 0.67155, 0.96114, 1.14833, ...
         0.82096, 0.60628];
 xa = [0:0.1:2.3];
 ya = [0:0.1:1.4];
 [x, y] = meshgrid (xa, ya);
 [in, on] = inpolygon (x, y, xv, yv);
 inside = in & ! on;
 plot (xv, yv);
 hold on;
 plot (x(inside), y(inside), "@g");
 plot (x(! in), y(! in), "@m");
 plot (x(on), y(on), "@b");
 hold off;
 disp ("Green points are inside polygon, magenta are outside,");
 disp ("and blue are on boundary.");