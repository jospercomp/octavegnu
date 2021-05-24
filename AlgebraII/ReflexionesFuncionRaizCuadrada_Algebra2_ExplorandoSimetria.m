close all; clear all; clc;
h=figure('Position',[1,21,1366,671], ...
'Name',strcat('Reflexiones de la Función Raíz Cuadrada',
'- Explorando la Simetría, Dominio y Rango',
' de la Función Raíz Cuadrada'));
lw=7; ms=40; fs=30; fsx=24;
a=3; b=0; c=0;
vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
x=linspace(-10,10,10000);
y=a*sqrt(-x);
x=x(imag(y)==0);
y=y(imag(y)==0);
hold on;
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
plot(x,y,'-','linewidth',lw,'color',vc)
hold off;
xlabel('Cuadrante II-Reflexión en y','fontsize',fsx,'fontweight','bold')
title('y=\surd[-x]=sqrt(-x)','fontsize',fs,'fontweight','bold','interpreter','tex')
ylabel('f(x)','fontsize',fs,'fontweight','bold')
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
x=linspace(-10,10,10000);
y=a*sqrt(x);
x=x(imag(y)==0);
y=y(imag(y)==0);
hold on;
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
plot(x,y,'-','linewidth',lw,'color',vc)
hold off;
xlabel('Cuadrante I-Reflexión Identidad','fontsize',fsx,'fontweight','bold')
title('y=\surd[x]=sqrt(x)','fontsize',fs,'fontweight','bold')
ylabel('f(x)','fontsize',fs,'fontweight','bold')
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
x=linspace(-10,10,10000);
y=-1*a*sqrt(-1*x);
x=x(imag(y)==0);
y=y(imag(y)==0);
hold on;
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
plot(x,y,'-','linewidth',lw,'color',vc)
hold off;
xlabel('Cuadrante III-Reflexión en el Origen','fontsize',fsx,'fontweight','bold')
title('y=-\surd[-x]=-sqrt(-x)','fontsize',fs,'fontweight','bold')
ylabel('f(x)','fontsize',fs,'fontweight','bold')
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
x=linspace(-10,10,10000);
y=-1*a*sqrt(x);
x=x(imag(y)==0);
y=y(imag(y)==0);
hold on;
plot([-10 10],[0 0],'-r','linewidth',3,[0 0],[-10 10],'-r','linewidth',3)
plot(x,y,'-','linewidth',lw,'color',vc)
hold off;
xlabel('Cuadrante IV-Reflexión en x','fontsize',fsx,'fontweight','bold')
title('y=-\surd[x]=-sqrt(x)','fontsize',fs,'fontweight','bold')
ylabel('f(x)','fontsize',fs,'fontweight','bold')
axis([-10 10 -10 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%