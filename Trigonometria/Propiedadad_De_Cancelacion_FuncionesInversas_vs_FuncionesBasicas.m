close all; clear all; clc;
%h=figure('Position',[11,116,560,414], ...
h=figure('Position',[1 21 1366 670], ...
'Name','Propiedades de Cancelación en Funciones Trigonométricas');
fs=14; fs2=12; ms=16;
subplot(2,3,1)
x=linspace(-1,1,1000);
y=sin(asin(x));
plot(x,y,'-b','linewidth',4);
title('sin(sin^{-1}(x))','fontsize',fs)
xlabel('Dominio: [-1,1]','fontsize',fs2,'fontweight','bold')
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-pi:pi/4:pi)
set(gca,'fontsize',fs,'xTickLabel', ...
{'-\pi','-3\pi_{/4}','-\pi_{/2}','-\pi_{/4}', ...
'0','\pi_{/4}','\pi_{/2}','3\pi_{/4}','\pi'})
axis([-3.5 3.5 -3.5 3.5]); grid on;
subplot(2,3,4)
x=linspace(-pi/2,pi/2,1000);
y=asin(sin(x));
plot(x,y,'-b','linewidth',4);
title('sin^{-1}(sin(x))','fontsize',fs)
xlabel('Dominio: [-^{\pi}/_{2},^{\pi}/_{2}]', ...
   'fontsize',fs2,'fontweight','bold')
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-pi:pi/4:pi)
set(gca,'fontsize',fs,'xTickLabel', ...
{'-\pi','-3\pi_{/4}','-\pi_{/2}','-\pi_{/4}', ...
'0','\pi_{/4}','\pi_{/2}','3\pi_{/4}','\pi'})
axis([-3.5 3.5 -3.5 3.5]); grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
x=linspace(-1,1,1000);
y=cos(acos(x));
plot(x,y,'-b','linewidth',4);
title('cos(cos^{-1}(x))','fontsize',fs)
xlabel('Dominio: [-1,1]','fontsize',fs2,'fontweight','bold')
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-pi:pi/4:pi)
set(gca,'fontsize',fs,'xTickLabel', ...
{'-\pi','-3\pi_{/4}','-\pi_{/2}','-\pi_{/4}', ...
'0','\pi_{/4}','\pi_{/2}','3\pi_{/4}','\pi'})
axis([-3.5 3.5 -3.5 3.5]); grid on;
subplot(2,3,5)
x=linspace(0,pi,1000);
y=acos(cos(x));
plot(x,y,'-b','linewidth',4);
title('cos^{-1}(cos(x))','fontsize',fs)
xlabel('Dominio: [0,\pi]','fontsize',fs2,'fontweight','bold')
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-pi:pi/4:pi)
set(gca,'fontsize',fs,'xTickLabel', ...
{'-\pi','-3\pi_{/4}','-\pi_{/2}','-\pi_{/4}', ...
'0','\pi_{/4}','\pi_{/2}','3\pi_{/4}','\pi'})
axis([-3.5 3.5 -3.5 3.5]); grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
x=linspace(-3.5,3.5,1000);
y=tan(atan(x));
plot(x,y,'-b','linewidth',4);
title('tan(tan^{-1}(x))','fontsize',fs)
xlabel('Dominio: (-\infty,\infty)','fontsize',fs2,'fontweight','bold')
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-pi:pi/4:pi)
set(gca,'fontsize',fs,'xTickLabel', ...
{'-\pi','-3\pi_{/4}','-\pi_{/2}','-\pi_{/4}', ...
'0','\pi_{/4}','\pi_{/2}','3\pi_{/4}','\pi'})
axis([-3.5 3.5 -3.5 3.5]); grid on;
subplot(2,3,6)
x=linspace(-pi/2,pi/2,1000);
y=atan(tan(x));
plot(x,y,'-b','linewidth',4);
title('tan^{-1}(tan(x))','fontsize',fs)
xlabel('Dominio: (-^{\pi}/_{2},^{\pi}/_{2})', ...
   'fontsize',fs2,'fontweight','bold')
set(gca,'YTick',-5:1:5)
set(gca,'xTick',-pi:pi/4:pi)
set(gca,'fontsize',fs,'xTickLabel', ...
{'-\pi','-3\pi_{/4}','-\pi_{/2}','-\pi_{/4}', ...
'0','\pi_{/4}','\pi_{/2}','3\pi_{/4}','\pi'})
axis([-3.5 3.5 -3.5 3.5]); grid on;