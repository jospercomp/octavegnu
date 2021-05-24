clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico Lineal',...
 ' - Registo de Tres Temperaturas a Distintas Horas del Día'));
D=1:1:14;
T1=[63 64  64 64 66 66 66 66 65 65 65 66 66 66]; 
T2=[64 66  66 66 70 70 69 70 68.5 67 68 69 68 68];
T3=[67 68.5 70 70 76 75 74 76 75 74 76 77 76 75]; 
hold on;
plot(D,T1,'b-.','linewidth',lw)
plot(D,T2,'g--','linewidth',lw)
plot(D,T3,'r-','linewidth',lw)
hold off
title("Registo de Tres Temperaturas a Distintas Horas del Día")
xlabel("Días")
ylabel("Temperatura Fahrenheit")
set(gca,'XTick',1:1:14)
set(gca,'YTick',60:2:80)
axis([0 14 60 80])
set(gca,'xticklabel',1:1:14,'yticklabel',60:2:80);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","on","gridalpha",1,'gridcolor',[0 0 0]);
%etiqueta de la legenda
vstring={"3:00 p.m.", ...
         "9:00 p.m.", ...
         "6:00 a.m."};
hl=legend(vstring);
legend(hl,"location","northeastoutside");
set(hl,"fontsize", 30);