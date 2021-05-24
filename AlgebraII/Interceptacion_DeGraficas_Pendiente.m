clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Interpretación Gráfica de las Pendientes entre Dos Rectas');
lw=3; ms=40; fs=20;
vc1=[0 0 1];
vc2=[1 0 0];
vc3=[0 0 0];
x = linspace(0,10,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
y1 = 1*x+2;
y2 = 1.1*x;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
hold off
title({'Relación Directa','Pendiente Roja > Pendiente Azul'},...
      'fontsize',fs)
xlabel('\Deltay > \Deltax',...
      'fontweight','bold','fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x2={};
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
y1 = x+2;
y2 = x;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(-5,5,'.','markersize',ms,'color',vc3);
hold off
title({'Relación Directa','Pendiente Roja = Pendiente Azul'},...
      'fontsize',fs)
xlabel('\Deltay = \Deltax',...
      'fontweight','bold','fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x2={};
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
y1 = 1.1*x+2;
y2 = 1*x;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(3,-2,'.','markersize',ms,'color',vc3);
hold off
title({'Relación Directa','Pendiente Roja < Pendiente Azul'},...
      'fontsize',fs)
xlabel('\Deltay < \Deltax',...
      'fontweight','bold','fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x2={};
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
y1 = -2*x+10;
y2 = -2.5*x+8;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(4,-1,'.','markersize',ms,'color',vc3);
hold off
title({'Relación Inversa','Pendiente Roja < Pendiente Azul'},...
      'fontsize',fs)
xlabel('\Deltay < \Deltax',...
      'fontweight','bold','fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x2={};
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
y1 = -2*x+10;
y2 = -2*x+8;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
hold off
title({'Relación Inversa','Pendiente Roja = Pendiente Azul'},...
      'fontsize',fs);
xlabel('\Deltay = \Deltax',...
      'fontweight','bold','fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x2={};
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
y1 = -2.2*x+10;
y2 = -2*x+8;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
hold off
title({'Relación Inversa','Pendiente Roja > Pendiente Azul'},...
      'fontsize',fs)
xlabel('\Deltay > \Deltax',...
      'fontweight','bold','fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x2={};
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);