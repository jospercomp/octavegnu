clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',"Gráfico de Barra Horizontal Colorido");
%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.85 0.99], "string", ...
             {''}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra para multiples colores
data=[3; 3.8; 4.7; 5.2; 4.8; 5.3; 5.0; 6.1; 6.3; 6.0];
hb= barh(1:length(data),diag(data),"stacked");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=length(data);
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
Mcolor=ocean(ncolor);
case 16
Mcolor=flag(ncolor);
case 17
Mcolor=lines(ncolor);
case 0
Mcolor=prism(ncolor);
otherwise
endswitch
for i=1:length(data)
set(hb(i),"facecolor",Mcolor(i,:))
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
title({"Central Azucarera","Cantidad de Caña Molida"},'fontsize',fs);
xlabel('','fontsize',fs2,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'YTick',1:1:10)
set(gca,'XTick',0:1:7)
axis([0 7 0 11])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:10:100;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str("0"));
else
y2(i)=strcat(num2str(yl(i)),"");
endif
endfor
Ly=1980:1:1989;
set(gca,'xticklabel',0:1:7,'yticklabel',Ly);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"xminortick","off","xgrid","on", ... 
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:length(data)
ht=text(data(i)+0.1,i-0.20,strcat(num2str(data(i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
