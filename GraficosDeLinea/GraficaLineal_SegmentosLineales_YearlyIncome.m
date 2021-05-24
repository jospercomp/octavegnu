clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico Lineal',...
 ' - YEARLY INCOME'));
Y=1925:5:1945;
I=[30 11 19.5 30.5 50]; 
plot(Y,I,'linewidth',lw)
title("YEARLY INCOME")
xlabel("YEARS")
ylabel("INCOME, MILLONS OF DOLLARS")
set(gca,'XTick',1925:5:1945)
set(gca,'YTick',0:10:60)
axis([1925 1945 0 60])
set(gca,'xticklabel',1925:5:1945,'yticklabel',0:10:60);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","on","gridalpha",1,'gridcolor',[0 0 0]);