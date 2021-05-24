close all; clear all; clc;
lw=5; ms=30; fs=18;
subplot(2,2,1)
x=[1 2 3 4 5 6];
y=[0 0.5 1 1.5 2 2.5];
plot(x,y,'-','linewidth',lw,x,y,'.','markersize',ms)
title({'Función Lineal','f(x)=0.5x-0.5'},'fontsize',fs)
subplot(2,2,2)
x=[1 2 3 4 5 6];
y=[3 9 27 81 243 729];
plot(x,y,'-','linewidth',lw,x,y,'.','markersize',ms)
title({'Función Exponencial','f(x)=3^x'},'fontsize',fs)
subplot(2,2,3)
x=[1 2 3 4 5 6];
y=[1 4 9 16 25 36];
plot(x,y,'-','linewidth',lw,x,y,'.','markersize',ms)
title({'Función Cuadrática','f(x)=x^2'},'fontsize',fs)
subplot(2,2,4)
x=[1 2 3 4 5 6];
y=[1 8 27 64 125 216];
plot(x,y,'-','linewidth',lw,x,y,'.','markersize',ms)
title({'Función Cúbica','f(x)=x^3'},'fontsize',fs)