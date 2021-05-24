clear all; close all; clc;
fs=24; fs2=22;
fs3=14; fs4=18;
lw=3; ms=10;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico de Barras Verticales Agrupados',... 
' Por Dos Semanas Y Cinco Personas Categorias', ...
' - Income'));
data=[80 90; 
70 100;
80 100;
60 90;
90 110];
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
acell={'Week 1','Week 2'};
hl=legend(acell);
legend(hl,"location","eastoutside");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlabel('People','fontsize',fs2,'fontweight','bold');
ylabel('Income (in dollars)','fontsize',fs2,'fontweight','bold');
title({'Income for two Weeks', ....
''},'fontsize',fs,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'XTick',1:1:5)
xtickL={'Amy' 'Brad' 'Cara' 'Dan' 'Elsa'};
set(gca,'XTickLabel',xtickL,'fontsize',fs4,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:20:120;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str("$0"));
else
y2(i)=strcat("$",num2str(yl(i)),"");
endif
endfor
grid on;
set(gca,'ytick',yl,'yticklabel',y2);
set(gca,"xminortick","off","xgrid","off", ... 
"ygrid","on","gridalpha",1, ...
"yminorgrid","off","minorgridalpha",0,'gridcolor',[0 0 0]);
axis([0 6 0 120])
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
