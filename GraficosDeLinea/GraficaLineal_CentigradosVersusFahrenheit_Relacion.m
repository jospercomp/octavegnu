clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico Lineal',...
 ' - The Centigrade and Fahrenheit scales compared'));
C=15:0.1:70;
F=9/5*C+32; 
plot(C,F,'linewidth',lw)
title(" The Centigrade and Fahrenheit scales compared")
xlabel("CENTIGRADE, DEGREES")
ylabel("FAHRENHEIT, DEGREES")
set(gca,'XTick',10:10:100)
set(gca,'YTick',0:20:180)
axis([0 110 0 200])
set(gca,'yticklabel',0:20:180,'xticklabel',10:10:100);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","on","gridalpha",1,'gridcolor',[0 0 0]);