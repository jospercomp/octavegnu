clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Ceros Repetidos en', ...
' Funciones Polinomiales & Funciones Polinómicas'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=0.5; fs2=24;
gav=0.3; 
vc2=[1 0 0]; vc3=[0 0 1]; vc4=[0 1 1]; vc5=[1 0 1];
x = linspace(-10,10,1000);
subplot(2,2,1)
hold on;
y5=(x+3).^5+5;
plot(x,y5,'-k','linewidth',lw,'color',vc5);
y4=(x+3).^4+5;
plot(x,y4,'-k','linewidth',lw,'color',vc4);
y3=(x+3).^3+5;
plot(x,y3,'-k','linewidth',lw,'color',vc3);
y2=(x+3).^2+5;
plot(x,y2,'-k','linewidth',lw,'color',vc2);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -50 50])
title('Ceros Repetidos - Cuadrante II','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
hold on;
y5=(x-3).^5+5;
plot(x,y5,'-k','linewidth',lw,'color',vc5);
y4=(x-3).^4+5;
plot(x,y4,'-k','linewidth',lw,'color',vc4);
y3=(x-3).^3+5;
plot(x,y3,'-k','linewidth',lw,'color',vc3);
y2=(x-3).^2+5;
plot(x,y2,'-k','linewidth',lw,'color',vc2);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -50 50])
title('Ceros Repetidos - Cuadrante I','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
hold on;
y5=-(x+3).^5-5;
plot(x,y5,'-k','linewidth',lw,'color',vc5);
y4=-(x+3).^4-5;
plot(x,y4,'-k','linewidth',lw,'color',vc4);
y3=-(x+3).^3-5;
plot(x,y3,'-k','linewidth',lw,'color',vc3);
y2=-(x+3).^2-5;
plot(x,y2,'-k','linewidth',lw,'color',vc2);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -50 50])
title('Ceros Repetidos - Cuadrante III','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
hold on;
y5=-(x-3).^5-5;
plot(x,y5,'-k','linewidth',lw,'color',vc5);
y4=-(x-3).^4-5;
plot(x,y4,'-k','linewidth',lw,'color',vc4);
y3=-(x-3).^3-5;
plot(x,y3,'-k','linewidth',lw,'color',vc3);
y2=-(x-3).^2-5;
plot(x,y2,'-k','linewidth',lw,'color',vc2);
hold off;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -50 50])
title('Ceros Repetidos - Cuadrante IV','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

