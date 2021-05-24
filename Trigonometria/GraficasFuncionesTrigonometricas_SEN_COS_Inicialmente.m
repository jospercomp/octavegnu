clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráficas de Funciones Trigonométricas ', ...
' Seno y Coseno Inicialmente'));
lw=3; fs=18; ms=0.5;
x = linspace(0,2*pi,100000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
y=cos(x);
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('cos(x)','fontsize',fs)
ylabel('Valor Máximo','fontweight','bold','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
y=-cos(x);
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('-cos(x)','fontsize',fs)
ylabel('Valor Mínimo','fontweight','bold','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-2:1:2)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
y=sin(x);
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('sin(x)','fontsize',fs)
ylabel('Valor Medio Creciente','fontweight','bold','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-2:1:2)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
y=-sin(x);
plot(x,y,'-','linewidth',lw,'color',[1 0 0]);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('-sin(x)','fontsize',fs)
ylabel('Valor Medio Decreciente','fontweight','bold','fontsize',fs)
axis([0 2*pi -2 2])
set(gca,'YTick',-2:1:2)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})