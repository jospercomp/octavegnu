clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Polar Plot Graph Demonstrations');
subplot(2,3,1)
theta = linspace(0,2*pi,1000);
rho =sin(7*theta);
polar(theta, rho);
title("polar() plot");
ax1=get(gca,'position');
subplot(2,3,2)
theta = linspace(0,2*pi,1000);
cplx = theta + i*sin(7*theta);
polar(cplx, "g");
title("polar() plot of complex data");
ax2=get(gca,'position');
subplot(2,3,3)
theta = linspace(0,2*pi,1000);
rho = sin(2*theta).*cos (2*theta);
polar(theta, rho, "--r");
set(gca, "rtick", 0.1:0.1:0.6, "ttick", 0:20:340);
title("polar() plot with finer grid");
ax3=get(gca,'position');
set(gca,"position", [ax3(1), ax3(2)-0.20, ax3(3), ax3(4)]);
subplot(2,3,4)
theta = linspace(0,2*pi,1000);
rho = sin(2*theta).*cos (2*theta);
polar(theta, rho, "--b");
set(gca, "fontsize", 12, "linewidth", 2, "color", [0.8 0.8 0.8]);
title("polar() plot with modified axis appearance");
ax4=get(gca,'position');
subplot(2,3,5)
theta = linspace(0,8*pi,1000);
rho = sin(5/4*theta);
polar(theta, rho);
set(gca, "rtick", 0.2:0.2:1);
title("polar() plot");
ax5=get(gca,'position');