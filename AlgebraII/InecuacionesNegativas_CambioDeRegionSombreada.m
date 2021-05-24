close all; clear all; clc;
hf=figure('Position',[ 1 21 1366 670], ...
'Name','Desigualdades, Inecuaciones y Ecuación Identidad');
fs=20;
fcolor=[0.000 0.447 0.741];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,1)
x = linspace(-10,10,100);
y = x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = x;
plot(y,x,'linewidth',5.0,'linestyle','--', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.01)
title('-y<-x','fontsize',fs)
xlabel('Línea Entrecortada','fontsize',fs,'fontweight','bold')
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,2)
x = linspace(-10,10,100);
y = x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = x;
plot(y,x,'linewidth',5.0,'linestyle','--', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',-10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.1)
title('-y>-x','fontsize',fs)
xlabel('Línea Entrecortada','fontsize',fs,'fontweight','bold')
set(gca,'YTick',-5:0:5)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,3)
x = linspace(-10,10,100);
y = x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = x;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.1)
xlabel('Línea Continua','fontsize',fs,'fontweight','bold')
title('-y \leq -x','fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,4)
x = linspace(-10,10,100);
y = x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = x;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',-10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.1)
xlabel('Línea Continua','fontsize',fs,'fontweight','bold')
title('-y \geq -x','fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,5)
x = linspace(-10,10,100);
y = -x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = -x;
plot(y,x,'linewidth',5.0,'linestyle','--', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.1)
xlabel('Línea Entrecortada','fontsize',fs,'fontweight','bold')
title('-y<x','fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,6)
x = linspace(-10,10,100);
y = -x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = -x;
plot(y,x,'linewidth',5.0,'linestyle','--', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',-10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.1)
xlabel('Línea Entrecortada','fontsize',fs,'fontweight','bold')
title('-y>x','fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,7)
x = linspace(-10,10,100);
y = -x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = -x;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.1)
xlabel('Línea Continua','fontsize',fs,'fontweight','bold')
title('-y \leq  x','fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,8)
x = linspace(-10,10,100);
y = -x;
hold on;
h1=area(x,y);
x = linspace(-10,10,100);
y = -x;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold off;
set(h1,'basevalue',-10,'edgecolor',[0 0 0], ...
'facecolor',fcolor, ...
'hittestarea','off','linestyle','-', ...
'linewidth',0.1)
xlabel('Línea Continua','fontsize',fs,'fontweight','bold')
title('-y \geq x','fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
axis([-10 10 -10 10])