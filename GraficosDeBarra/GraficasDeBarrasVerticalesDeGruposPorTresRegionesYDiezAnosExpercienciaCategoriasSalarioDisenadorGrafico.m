clear all; close all; clc;
fs=24; fs2=22;
fs3=14; fs4=18;
lw=3; ms=10;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
h=figure('Position',[1 21 1366 670], ...
'Name',strcat(' Gráfico de Barras Verticales Agrupados',... 
' por Tres Regiones & Gráfico de Líneas', ...
' - Salarios de Diseñadores Gráficos'));
data=[23500 25000 23000; 
25000 26500 25500;
30500 29000 29750;
33750 31500 32750;
36000 31750 33750;
36750 31750 34500;
37000 32500 34500;
40500 37000 38000;
41000 38000 39000;
44500 41500 41500];
hb= bar(data);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=size(data,2);
opc=randi([1 18]);
%opc=8;
switch(mod(opc,18))
case 1
Mcolor=jet(ncolor);
case 2
Mcolor=cubehelix(ncolor);
case 3
Mcolor=hsv(ncolor);
case 4
Mcolor=rainbow(ncolor);
case 5
Mcolor=hot(ncolor);
case 6
Mcolor=cool(ncolor);
case 7
Mcolor=spring(ncolor);
case 8
Mcolor=summer(ncolor);
case 9
Mcolor=autumn(ncolor);
case 10
Mcolor=winter(ncolor);
case 11
Mcolor=gray(ncolor);
case 12
Mcolor=bone(ncolor);
case 13
Mcolor=copper(ncolor);
case 14
Mcolor=pink(ncolor);
case 15
ncolor=4;
Mcolor=ocean(ncolor);
case 16
Mcolor=flag(ncolor);
case 17
Mcolor=lines(ncolor);
case 0
Mcolor=prism(ncolor);
otherwise
endswitch
for i=1:size(data,2)
set(hb(i),"facecolor",Mcolor(i,:))
endfor
%etiqueta de la legenda
acell={'Region 1','Region 2','Region 3'};
hl=legend(acell);
legend(hl,"location","eastoutside");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlabel('Years of Experience','fontsize',fs2,'fontweight','bold');
ylabel('Salary (in dollars)','fontsize',fs2,'fontweight','bold');
title({'Salaries of Graphic Designers', ....
''},'fontsize',fs,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'XTick',1:1:10)
set(gca,'XTickLabel',1:1:10,'fontsize',fs4,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:5000:50000;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str(""));
else
y2(i)=strcat(num2str(yl(i)),"");
endif
endfor
grid on;
set(gca,'ytick',yl,'yticklabel',y2);
set(gca,"yminortick","on","xgrid","on", ... 
"ygrid","on","gridalpha",1, ...
"yminorgrid","on","minorgridalpha",1,'gridcolor',[0 0 0]);
axis([0 11 0 50000])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
%for i=1:size(data,1)
%ht=text(i-0.25,data(i,1)+0.7,strcat(num2str(data(i,1)),""));
%set(ht,'fontsize',fs3,'fontweight','bold', ...
%'verticalalignment','bottom', ...
%'horizontalalignment','center')
%ht=text(i,data(i,2)+0.7,strcat(num2str(data(i,2)),""));
%set(ht,'fontsize',fs3,'fontweight','bold', ...
%'verticalalignment','bottom', ...
%'horizontalalignment','center')
%ht=text(i+0.25,data(i,3)+0.7,strcat(num2str(data(i,3)),""));
%set(ht,'fontsize',fs3,'fontweight','bold', ...
%'verticalalignment','bottom', ...
%'horizontalalignment','center')
%endfor
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"
