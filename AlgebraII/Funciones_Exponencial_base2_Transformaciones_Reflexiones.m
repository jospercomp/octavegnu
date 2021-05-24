clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Función Exponencial', ...
' - Transformaciones de Reflexión - Horizontal y Vertical'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=15; fs2=18;
gav=0.3; vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,2)
x = linspace(-10,10,1000);
y=2.^(-x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('f(x)=2^{-x}','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs,'fontweight','bold')
ylabel('Rango: (0, \infty) ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,3)
x = linspace(-10,10,1000);
y=2.^x;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('f(x)=2^{x}','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs,'fontweight','bold')
ylabel('Rango: (0, \infty) ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,6)
x = linspace(-10,10,1000);
y=-2.^(-x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('f(x)=-2^{-x}','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs,'fontweight','bold')
ylabel('Rango: (-\infty,0) ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,7)
x = linspace(-10,10,1000);
y=-2.^x;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('f(x)=-2^{x}','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs,'fontweight','bold')
ylabel('Rango: (\infty,0) ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%