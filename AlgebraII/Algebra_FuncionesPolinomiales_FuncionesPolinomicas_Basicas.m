clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Funciones Polinomiales & Funciones Polinómicas', ...
' Básicas'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=0.5; fs2=24;
gav=0.3; vc=[1 0 0];
x = linspace(-6,6,1000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.84 0.99], "string", ...
{'Funciones Polinómicas Básicas',''}, ...
"fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
"fitboxtotext", "off", "verticalalignment", "top", ...
"horizontalalignment", "center",'linestyle','none','linewidth',0.1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
y=x;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('Función Lineal','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
y = (x-3).*(x+3);
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('Función Cuadrática','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
y = 0.5*x.*(x-4).*(x+4);
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('Función Cúbica','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
y =(x-5).*(x+5).*(x-2).*(x+2);
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('Función Cuártica','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%