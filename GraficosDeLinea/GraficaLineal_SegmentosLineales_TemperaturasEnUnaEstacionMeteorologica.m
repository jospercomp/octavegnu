clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gr�fico Lineal',...
 ' - Temperaturas en una Estaci�n Meteorol�gica'));
D=1:1:14;
G=[67 69  70 70 76 75 74 76 75 74 76 77 76 74]; 
plot(D,G,'linewidth',lw)
title({"Temperaturas en una Estaci�n Meteorol�gica",...
       "durante 14 d�as consecutivos de un mes"})
xlabel("D�as")
ylabel("Grados Fahrenheit")
set(gca,'XTick',1:1:14)
set(gca,'YTick',60:2:80)
axis([0 14 60 80])
set(gca,'xticklabel',1:1:14,'yticklabel',60:2:80);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","on","gridalpha",1,'gridcolor',[0 0 0]);