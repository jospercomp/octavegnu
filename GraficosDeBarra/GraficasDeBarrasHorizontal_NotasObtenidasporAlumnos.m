clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',"Gráfico de Barra Horizontal Colorido");
data=[75;85;95;55;70;80];
%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.85 0.99], "string", ...
             {''}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra para multiples colores
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
title({"Notas obtenidas por los alumnos"},'fontsize',fs);
xlabel('','fontsize',fs2,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'YTick',1:1:length(data))
set(gca,'XTick',0:10:100)
axis([0 100 0 length(data)+1])
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
Ly={"Felipe","Gabriel","Roberto","Carlos","Marcos","Susana"};
set(gca,'xticklabel',y2,'yticklabel',Ly);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"xminortick","off","xgrid","on", ... 
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:length(data)
ht=text(data(i)+1.5,i-0.20,strcat(num2str(data(i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
