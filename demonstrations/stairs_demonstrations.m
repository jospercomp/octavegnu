close all; clear all; clc;
h=figure('Position',[3 24 939 419], ...
'Name','Stairs Demonstrations');
subplot(2,3,1)
rand_1x10_data1 = [0.073, 0.455, 0.837, 0.124, 0.426,...
 0.781, 0.004, 0.024, 0.519, 0.698];
y = rand_1x10_data1;
stairs(y);
title('stairs() plot of y-data');
ax1=get(gca,'position');
subplot(2,3,2)
x = 1:10;
rand_1x10_data2 = [0.014, 0.460, 0.622, 0.394, 0.531, ...
0.378, 0.466, 0.788, 0.342, 0.893];
y = rand_1x10_data2;
[xs, ys] =stairs(x, y);
plot(xs, ys);
title("plot() of stairs() generated data");
ax2=get(gca,'position');
subplot(2,3,3)
stairs(1:9, "-o");
title("stairs() plot with linespec to modify marker");
ax3=get(gca,'position');
set(gca,"position", [ax3(1), ax3(2)-0.20, ax3(3), ax3(4)]);
subplot(2,3,4)
stairs(9:-1:1, "marker", "s", "markersize", 10, "markerfacecolor", "m");
title("stairs() plot with prop/val pairs to modify appearance");
ax4=get(gca,'position');
subplot(2,3,5)
N = 11;
x = 0:(N-1);
y = rand(1, N);
hs = stairs (x(1), y(1));
axis([1, N-1 0, 1]);
title("stairs plot data modified through handle");
for k = 2:N
   set(hs, "xdata", x(1:k), "ydata", y(1:k));
   drawnow();
   pause(0.2);
 endfor
 ax5=get(gca,'position');