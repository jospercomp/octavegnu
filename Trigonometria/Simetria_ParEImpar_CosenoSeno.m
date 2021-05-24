close all; clear all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Funciones Sinusoidales - Simetría Impar Función Seno y Simetría Par Función Coseno');
%[11,116,560,414]
fs=18; ms=16;
subplot(2,1,1)
x=linspace(-2*pi,2*pi,50);
y=sin(x);
plot(x,y,'-b','linewidth',4);
title('sin(x)','fontsize',fs)
xlabel('Simetría Impar','fontweight','bold')
set(gca,'YTick',-2:1:2)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}', ...
'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
axis([-2*pi 2*pi -2 2]); 
set(gca,"gridcolor", [0 0 0]);
%set(gca, "gridalpha", 0)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off;
grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,2)
x=linspace(-2*pi,2*pi,50);
y=cos(x);
plot(x,y,'-b','linewidth',4);
title('cos(x)','fontsize',fs)
xlabel('Simetría Par','fontweight','bold')
set(gca,'YTick',-2:1:2)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}', ...
'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
axis([-2*pi 2*pi -2 2]); 
set(gca,"gridcolor", [0 0 0]);
%set(gca, "gridalpha", 0)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off;
grid on;