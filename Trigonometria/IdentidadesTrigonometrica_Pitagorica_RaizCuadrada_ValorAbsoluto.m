clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráficas de Identidades Trigonométricas', ...
' Pitagóricas, Raíz Cuadrada y Valor Absoluto'));
lw=5; fs=26; ms=15; fs2=30;
cC=3;
x = linspace(-2*pi,2*pi,500);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
hold on;
y=sqrt(1-(cos(x)).^2);
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'|sin(x)|', ...
'sqrt(1-cos^{2}(x))'}, ...
'fontsize',fs)
axis([-2*pi 2*pi -5 5])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-5:1:5)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
hold on;
y=sqrt(1-(sin(x)).^2);
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'|cos(x)|', ...
'sqrt(1-sin^{2}(x))'}, ...
'fontsize',fs)
axis([-2*pi 2*pi -5 5])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-5:1:5)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
hold on;
y=sqrt((sec(x)).^2-1);
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'|tan(x)|', ...
'sqrt(sec^{2}(x)-1)'}, ...
'fontsize',fs)
axis([-2*pi 2*pi -5 5])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-5:1:5)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
hold on;
y=sqrt((1+cot(x)).^2);
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'|csc(x)|', ...
'sqrt(1+cot^{2}(x))'}, ...
'fontsize',fs)
axis([-2*pi 2*pi -5 5])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-5:1:5)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
hold on;
y=sqrt((1+tan(x)).^2);
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'|sec(x)|', ...
'sqrt(1+tan^{2}(x))'}, ...
'fontsize',fs)
axis([-2*pi 2*pi -5 5])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-5:1:5)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
hold on;
y=sqrt((csc(x)).^2-1);
plot(x,y,'-','linewidth',lw,'color',[0 0 1]);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'|cot(x)|', ...
'sqrt(csc^{2}(x)-1)'}, ...
'fontsize',fs)
axis([-2*pi 2*pi -5 5])
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-2*pi:pi/2:2*pi)
set(gca,'fontsize',0.5*fs,'yTickLabel', ...
-5:1:5)
set(gca,'fontsize',0.5*fs,'xTickLabel', ...
{'-2\pi','-3\pi_{/2}','-\pi','-\pi_{/2}','','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})