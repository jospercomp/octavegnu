clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
%%%%%%%%%%%%%%%%%%%%%%%%%
data=[105 102; 235 205; 15 13];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico de Barra Horizontal - ', ...
'Population of a Country by Age'));
hb= barh(data);
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ylabel('Age (years)','fontsize',fs2,'fontweight','bold');
xlabel('Population (thousands)','fontsize',fs2,'fontweight','bold');
title('Population of a Country by Age (2010 estimate)')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'YTick',1:1:4)
set(gca,'XTick',0:50:250)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:10:80;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str(""));
else
y2(i)=strcat(num2str(yl(i)),"%");
endif
endfor
y1={"0-14","15-64","65 and Older"};
set(gca,'ytick',1:3,'yticklabel',y1);
set(gca,'fontsize',fs4,'fontweight','bold');
set(gca,"xminortick","off","xgrid","on", ... 
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
%etiqueta de la legenda
vstring={"Male", ...
         "Female"};
hl=legend(vstring);
legend(hl,"location","eastoutside");
set(hl,"fontsize", 30);