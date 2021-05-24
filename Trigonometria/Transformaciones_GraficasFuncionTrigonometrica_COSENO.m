clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gr�ficas de Transformaciones', ...
' de la Funci�n Trigonom�trica Coseno'));
lw=5; fs=26; ms=0.5;
cC=3;
x = linspace(0,2*pi,100000);
y=cos(x);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
hold on;
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
y2=cC*cos(x);
plot(x,y2,'-','linewidth',lw,'color',[0 0 0]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title(strcat(num2str(cC),'cos(x)'),'fontsize',fs)
axis([0 2*pi -10 10])
set(gca,'YTick',-10:2:10)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-10:2:10)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
hold on;
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
y2=cos(x)+cC;
plot(x,y2,'-','linewidth',lw,'color',[0 0 0]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title(strcat('cos(x)+',num2str(cC)),'fontsize',fs)
axis([0 2*pi -10 10])
set(gca,'YTick',-10:2:10)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-10:2:10)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
hold on;
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
y2=cos(x/cC);
plot(x,y2,'-','linewidth',lw,'color',[0 0 0]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title(strcat('cos(^x/_{',num2str(cC),'})'),'fontsize',fs)
axis([0 2*pi -10 10])
set(gca,'YTick',-10:2:10)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-10:2:10)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
hold on;
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
y2=cos(cC*x);
plot(x,y2,'-','linewidth',lw,'color',[0 0 0]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title(strcat('cos(',num2str(cC),'x)'),'fontsize',fs)
axis([0 2*pi -10 10])
set(gca,'YTick',-10:2:10)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-10:2:10)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
hold on;
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
y2=cos(x-cC);
plot(x,y2,'-','linewidth',lw,'color',[0 0 0]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title(strcat('cos(x-',num2str(cC),')'),'fontsize',fs)
axis([0 2*pi -10 10])
set(gca,'YTick',-10:2:10)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-10:2:10)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
hold on;
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
y2=cC*cos(cC*x-2*cC)+cC;
plot(x,y2,'-','linewidth',lw,'color',[0 0 0]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title(strcat(num2str(cC),'cos(',num2str(cC),'x-',...
num2str(2*cC),')+',num2str(cC)),'fontsize',fs)
axis([0 2*pi -10 10])
set(gca,'YTick',-10:2:10)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-10:2:10)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})