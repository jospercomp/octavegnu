clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','pbaspect Command Demonstrations');
subplot(1,3,1) 
 x = 0:0.01:4;
 plot (x,cos(x), x,sin(x));
 pbaspect ([1 1 1]);
 title ("plot box is square");
subplot(1,3,2) 
 x = 0:0.01:4;
 plot (x,cos(x), x,sin(x));
 pbaspect ([2 1 1]);
 title ("plot box aspect ratio is 2x1");
subplot(1,3,3) 
 x = 0:0.01:4;
 plot (x,cos(x), x,sin(x));
 daspect ([1 1 1]);
 pbaspect ([2 1 1]);
 title ("plot box is 2x1, and axes [0 4 -1 1]");