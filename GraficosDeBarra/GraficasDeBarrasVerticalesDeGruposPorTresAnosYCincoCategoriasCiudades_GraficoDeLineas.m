clear all; close all; clc;
fs=24; fs2=22;
fs3=14; fs4=18;
lw=3; ms=10;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
h=figure('Position',[1 21 1366 670], ...
'Name',strcat(' Gráfico de Barras & Gráfico de Líneas', ...
' - Marathon Finishers'));
subplot(1,2,1)
data=[30 40 45; 30 30 35;25 30 20;20 30 25;20 20 25];
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
acell={'2008','2009','2010'};
hl=legend(acell);
legend(hl,"location","eastoutside");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlabel('Cities','fontsize',fs2,'fontweight','bold');
ylabel('Finishers (thousands)','fontsize',fs2,'fontweight','bold');
title({'Marathon Finishers by City', ....
''},'fontsize',fs,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'YTick',0:5:50)
set(gca,'XTick',1:1:5)
lescala={'City A','City B','City C','City D','City E'};
set(gca,'XTickLabel',lescala,'fontsize',fs4,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:5:50;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str(""));
else
y2(i)=strcat(num2str(yl(i)),"");
endif
endfor
set(gca,'ytick',yl,'yticklabel',y2);
set(gca,"xminortick","off","xgrid","off", ... 
"ygrid","on","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:size(data,1)
ht=text(i-0.25,data(i,1)+0.7,strcat(num2str(data(i,1)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(i,data(i,2)+0.7,strcat(num2str(data(i,2)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(i+0.25,data(i,3)+0.7,strcat(num2str(data(i,3)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"
subplot(1,2,2)
D=2005:1:2010;
G=[200 210 230 230 240 255]; 
plot(D,G,'linewidth',lw,D,G,'s','markersize',ms)
title({"Total Male Marathon Finishers",""}, ...
'fontsize',30,'fontweight','bold')
xlabel("Year",'fontsize',14,"fontweight",'bold')
ylabel("Finishers (thousands)",'fontsize',14,"fontweight",'bold')
set(gca,'XTick',D)
set(gca,'YTick',180:20:300)
axis([2004 2011 180 300])
%set(gca,'xticklabel',1:1:14,'yticklabel',60:2:80);
set(gca,"fontsize",fs4,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","off","gridalpha",1,'gridcolor',[0 0 0]);
for i=1:length(D) 
  text(D(i)-0.4,G(i)+3.5,num2str(G(i)), ...
  'fontsize',14,"fontweight",'bold')
endfor