close all; clear all; clc;
hf=figure('Position',[ 1 21 1366 670], ...
'Name','Región Solución Inecuaciones Paralelas Crecientes & Decrecientes');
fs=20;
fcolor=[153	51	153]/255;
fcolor=[216 35 102]/255;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,1)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
xp=[-10 -10 -7 10 10 7];
yp=[-7 -10 -10 7 10 10];
hp=fill(xp,yp,"r");
set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Central','Creciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,2)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
%xp=[-10 -10 -7 10 10 7];
%yp=[-7 -10 -10 7 10 10];
%hp=fill(xp,yp,"r");
%set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Vacía','Creciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,5)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
xp=[-10 -10 7];
yp=[10 -7 10];
hp=fill(xp,yp,"r");
set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Superior','Creciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,6)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
xp=[-7 10 10];
yp=[-10 -10 7];
hp=fill(xp,yp,"r");
set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Inferior','Creciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,3)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
xp=[7    10 10 -7 -10 -10];
yp=[-10 -10 -7 10 10 7];
hp=fill(xp,yp,"r");
set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = -x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = -x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Central','Decreciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,4)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
%xp=[7    10 10 -7 -10 -10];
%yp=[-10 -10 -7 10 10 7];
%hp=fill(xp,yp,"r");
%set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = -x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = -x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Vacía','Decreciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,7)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
xp=[-7 10 10];
yp=[10 -7 10];
hp=fill(xp,yp,"r");
set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = -x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = -x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Superior','Decreciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,8)
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
hold on;
xp=[-10 -10 7];
yp=[7 -10 -10];
hp=fill(xp,yp,"r");
set(hp,'facecolor',fcolor)
x = linspace(-10,10,100);
y = -x+3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
y = -x-3;
plot(x,y,'linewidth',5.0,'linestyle','-', ...
'color',[0 0 0])
hold off;
title({'Región Inferior','Decreciente'},'fontsize',fs)
set(gca,'YTick',-10:0:10)
set(gca,'XTick',-10:0:10)
grid on;
axis([-10 10 -10 10])