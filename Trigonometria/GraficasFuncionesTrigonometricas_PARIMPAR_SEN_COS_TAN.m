clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráficas de Funciones Trigonométricas', ...
' PARES E IMPARES SEN-COS-TAN'));
lw=3; fs=14; ms=0.5;
x = linspace(-2*pi,2*pi,100000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
y=cos(-x);
plot(x,y,'.','markersize',ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
'origin','bottom','top','zero'
box off; grid on;
title('cos(-x)','fontsize',fs)
axis([-2*pi 2*pi -2 2])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
y = cos(x);
y2 = cos(x);
plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('cos(x)','fontsize',fs)
axis([-2*pi 2*pi -2 2])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
y = sin(-x);
plot(x,y,'.','markersize',ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('sin(-x)','fontsize',fs)
axis([-2*pi 2*pi -2 2])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
y = -sin(x);
y2 = sin(x);
plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('-sin(x)','fontsize',fs)
axis([-2*pi 2*pi -2 2])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
y = tan(-x);
plot(x,y,'.','markersize',ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('tax(-x)','fontsize',fs)
axis([-2*pi 2*pi -10 10])
set(gca,'YTick',-10:2:10)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
y = -tan(x);
y2 = tan(x);
plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('-tan(x)','fontsize',fs)
axis([-2*pi 2*pi -10 10])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%