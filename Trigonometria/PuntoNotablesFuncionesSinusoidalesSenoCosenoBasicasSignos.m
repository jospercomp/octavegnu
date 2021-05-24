clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Puntos Notables en Radianes',
' de Funciones Trigonométricas ',
' Seno y Coseno'));
lw=3; fs=18; ms=0.5; ms2=40;
x = linspace(0,2*pi,100000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
xP=[0 pi/2 pi 3*pi/2 2*pi];
y=cos(x);
yP=cos(xP);
hold on;
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
plot(xP,yP,'.r','markersize',ms2)
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('cos(x)','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
xP=[0 pi/2 pi 3*pi/2 2*pi];
y=-cos(x);
yP=-cos(xP);
hold on;
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
plot(xP,yP,'.r','markersize',ms2)
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('-cos(x)','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-2:1:2)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
xP=[0 pi/2 pi 3*pi/2 2*pi];
y=sin(x);
yP=sin(xP);
hold on;
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
plot(xP,yP,'.r','markersize',ms2)
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('sin(x)','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-2:1:2)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
xP=[0 pi/2 pi 3*pi/2 2*pi];
y=-sin(x);
yP=-sin(xP);
hold on;
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
plot(xP,yP,'.r','markersize',ms2)
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('-sin(x)','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-2:1:2)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})