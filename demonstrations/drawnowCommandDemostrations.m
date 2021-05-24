clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','drawnow Command Demonstrations');
fs=20; vc=[1 0 0]; 
ls='-'; lw=3;
mt='s'; mst=10; mct=[1 1 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,1)
N=11;
x=0:(N-1);
y=rand(1,N);
hs=stem(x(1),y(1),'color',vc, ...
'linestyle',ls,'linewidth',lw, ...
"marker", mt, "markersize", mst, "markerfacecolor", mct);
set(gca(),"xlim",[1,N-1],"ylim",[0,1]);
title("drawnow stem plot data modified through handle", ...
     'fontsize',fs);
for k=2:N
set(hs,"xdata",x(1:k),"ydata",y(1:k));
drawnow();
pause(0.5);
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
N=11;
x=0:(N-1);
y=rand(1,N);
hs=stairs(x(1),y(1),'color',vc, ...
'linestyle',ls,'linewidth',lw, ...
"marker", mt, "markersize", mst, "markerfacecolor", mct);
axis([1,N-1,0,1]);
set(gca,"xaxislocation", "origin");
set(gca,"yaxislocation", "origin");
box off;
title("drawnow stairs plot data modified through handle", ...
     'fontsize',fs);
for k=2:N
set(hs,"xdata",x(1:k),"ydata",y(1:k));
drawnow();
pause(0.5);
endfor