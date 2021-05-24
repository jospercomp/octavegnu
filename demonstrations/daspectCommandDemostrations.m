clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','daspect Command Demostrations');
subplot(2,3,1) 
 x = 0:0.01:4;
 plot (x,cos(x), x,sin(x));
 axis square;
 daspect ([1 1 1]);
 title ("square plot box with axis limits [0, 4, -2, 2]");
subplot(2,3,2) 
 x = 0:0.01:4;
 plot (x,cos (x), x,sin (x));
 axis ([0 4 -1 1]);
 daspect ([2 1 1]);
 title ("square plot box with axis limits [0, 4, -1, 1]");
subplot(2,3,[3 6]) 
 x = 0:0.01:4;
 plot (x,cos(x), x,sin(x));
 daspect ([1 2 1]);
 pbaspect ([2 1 1]);
 title ("2x1 plot box with axis limits [0, 4, -2, 2]");
subplot(2,3,4) 
 x = 0:0.01:4;
 plot (x,cos(x), x, sin(x));
 axis square;
 set (gca, "activepositionproperty", "position");
 daspect ([1 1 1]);
 title ("square plot box with axis limits [0, 4, -2, 2]");
subplot(2,3,5) 
 x = 0:0.01:4;
 plot (x,cos(x), x,sin(x));
 axis ([0 4 -1 1]);
 set (gca, "activepositionproperty", "position");
 daspect ([2 1 1]);
 title ("square plot box with axis limits [0, 4, -1, 1]");