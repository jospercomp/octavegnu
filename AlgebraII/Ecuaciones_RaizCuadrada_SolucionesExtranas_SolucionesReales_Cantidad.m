clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Tipos de Gráficas de Ecuaciones con Raíz Cuadrada', ...
' Soluciones Extrañas & Soluciones Reales'));
lw=3; fs=26; ms=15; fs2=30;
cC=3;
vc=[1 0 0];
x = linspace(-2*pi,2*pi,500);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
hold on;
x = linspace(-10,10,1000);
y2=x;
plot(x,y2,'-','linewidth',lw,'color',vc);
y1=sqrt(2*x+3);
x=x(imag(y1)==0);
y1=y1(imag(y1)==0);
plot(x,y1,'-','linewidth',lw,'color',vc);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
axis([-10 10 -10 10])
set(gca,'YTick',-10:1:10)
set(gca,'xTick',-10:1:10)
set(gca,'fontsize',0.5*fs,'yTickLabel', {})
set(gca,'fontsize',0.5*fs,'xTickLabel', {})
title('sqrt(ax+b)=x','fontsize',fs)
xlabel({'Una Solución Real','Una Solución Extraña'}, ...
'fontsize',0.75*fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
hold on;
x = linspace(-10,10,10000);
y2=x;
plot(x,y2,'-','linewidth',lw,'color',vc);
y1=sqrt(21-4*x);
x=x(imag(y1)==0);
y1=y1(imag(y1)==0);
plot(x,y1,'-','linewidth',lw,'color',vc);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
axis([-10 10 -10 10])
set(gca,'YTick',-10:1:10)
set(gca,'xTick',-10:1:10)
set(gca,'fontsize',0.5*fs,'yTickLabel', {})
set(gca,'fontsize',0.5*fs,'xTickLabel', {})
title('sqrt(b-ax)=x','fontsize',fs)
xlabel({'Una Solución Real','Una Solución Extraña'}, ...
'fontsize',0.7*fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
hold on;
x = linspace(-10,10,10000);
y2=x;
plot(x,y2,'-','linewidth',lw,'color',vc);
y1=sqrt(-4*x-3);
x=x(imag(y1)==0);
y1=y1(imag(y1)==0);
plot(x,y1,'-','linewidth',lw,'color',vc);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
axis([-10 10 -10 10])
set(gca,'YTick',-10:1:10)
set(gca,'xTick',-10:1:10)
set(gca,'fontsize',0.5*fs,'yTickLabel', {})
set(gca,'fontsize',0.5*fs,'xTickLabel', {})
title('sqrt(-ax-b)=x','fontsize',fs)
xlabel({'Ninguna Solución Real','Dos Soluciones Extrañas'}, ...
'fontsize',0.75*fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
hold on;
x = linspace(-10,10,10000);
y2=x;
plot(x,y2,'-','linewidth',lw,'color',vc);
y1=sqrt(4*x-16);
x=x(imag(y1)==0);
y1=y1(imag(y1)==0);
plot(x,y1,'-','linewidth',lw,'color',vc);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
axis([-10 10 -10 10])
set(gca,'YTick',-10:1:10)
set(gca,'xTick',-10:1:10)
set(gca,'fontsize',0.5*fs,'yTickLabel', {})
set(gca,'fontsize',0.5*fs,'xTickLabel', {})
title('sqrt(ax-b)=x','fontsize',fs)
xlabel({'Ninguna Solución Real','Dos Soluciones Extrañas'}, ...
'fontsize',0.7*fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
hold on;
x = linspace(-10,10,10000);
y2=x;
plot(x,y2,'-','linewidth',lw,'color',vc);
y1=sqrt([9*x-14]);
x=x(imag(y1)==0);
y1=y1(imag(y1)==0);
plot(x,y1,'-','linewidth',lw,'color',vc);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
axis([-2 10 -2 10])
set(gca,'YTick',-2:1:10)
set(gca,'xTick',-2:1:10)
set(gca,'fontsize',0.5*fs,'yTickLabel', {})
set(gca,'fontsize',0.5*fs,'xTickLabel', {})
title('sqrt(ax-b)=x','fontsize',fs)
xlabel({'Dos Soluciones Reales','Ninguna Solución Extraña'}, ...
'fontsize',0.7*fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
hold on;
x = linspace(-10,10,10000);
y2=x;
plot(x,y2,'-','linewidth',lw,'color',vc);
y1=sqrt([10*x-25]);
x=x(imag(y1)==0);
y1=y1(imag(y1)==0);
plot(x,y1,'-','linewidth',lw,'color',vc);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
axis([-2 10 -2 10])
set(gca,'YTick',-2:1:10)
set(gca,'xTick',-2:1:10)
set(gca,'fontsize',0.5*fs,'yTickLabel', {})
set(gca,'fontsize',0.5*fs,'xTickLabel', {})
title('sqrt(ax-b)=x','fontsize',fs)
xlabel({'Una Solución Real','Ninguna Solución Extraña'}, ...
'fontsize',0.7*fs,'fontweight','bold')