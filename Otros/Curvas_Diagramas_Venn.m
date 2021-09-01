%plot(x1,y1,'d',x2,y2,'d',x,y)
clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Curvas de Diagramas de Venn', ...
''));
fc=[1 0 0]; fa=1; ec=[0 0 0]; ea=1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

subplot(2,3,1)
t = linspace(0,2*pi,1000);
x1 = [cos(t) 1];
y1 = [sin(t) 0];
x2 = [cos(t)-0.75 0.25];
y2 = [sin(t) 0];
hold on;
plot(x1,y1,'*',x2,y2,'*')
plot([0 -0.75],[0 0],'.','markersize',30)
hold off;
ax1=get(gca,'position');
set(gca,"position",[ax1(1) ax1(2)-0.25 ax1(3) ax1(4)])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
subplot(2,3,2)
t=67.98:0.01:292.2;
x1 = cos(t*pi/180)-0.75;
y1 = sin(t*pi/180);
t=247.98:-0.01:112.02;
x2 = cos(t*pi/180);
y2 = sin(t*pi/180);
x=[x1 x2];
y=[y1 y2];
fill(x,y,'r','linewidth',0.5,'linestyle','-',...
        'facecolor',fc,'facealpha',fa, ...
        'edgecolor',ec,'edgealpha',ea)
axis([ -2 1 -1 1])
subplot(2,3,3)
t=(360+67.98):-0.01:292.2;
x1 = cos(t*pi/180)-0.75;
y1 = sin(t*pi/180);
t=247.98:0.01:(360+112.02);
x2 = cos(t*pi/180);
y2 = sin(t*pi/180);
x=[x1 x2];
y=[y1 y2];
fill(x,y,'r','linewidth',0.5,'linestyle','-',...
        'facecolor',fc,'facealpha',fa, ...
        'edgecolor',ec,'edgealpha',ea)
axis([ -2 1 -1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
subplot(2,3,5)
t=292.2:0.01:(360+67.98);
x1 = cos(t*pi/180)-0.75;
y1 = sin(t*pi/180);
t=112.02:0.01:247.98;
x2 = cos(t*pi/180);
y2 = sin(t*pi/180);
x=[x1 x2];
y=[y1 y2];
fill(x,y,'r','linewidth',0.5,'linestyle','-',...
        'facecolor',fc,'facealpha',fa, ...
        'edgecolor',ec,'edgealpha',ea)
axis([ -2 1 -1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
subplot(2,3,6)
t=67.98:0.01:292.2;
x1 = cos(t*pi/180)-0.75;
y1 = sin(t*pi/180);
t=247.98:0.01:(360+112.02);
x2 = cos(t*pi/180);
y2 = sin(t*pi/180);
x=[x1 x2];
y=[y1 y2];
fill(x,y,'r','linewidth',0.5,'linestyle','-',...
        'facecolor',fc,'facealpha',fa, ...
        'edgecolor',ec,'edgealpha',ea)
axis([ -2 1 -1 1])