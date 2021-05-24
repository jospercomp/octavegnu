%Grafico de Barra Apiladas Verticalmente
%Stacked Bar Graph Vertically
clear all; close all; clc;
fs=24; fs2=22;
fs3=14;
lw=3; ms=10;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico de Barras Vertical & Gráfico Circular',...
 ' - DVDs Ordered'));
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,1)
data=[40 60 34 30 20 20 14 20 25 30 34 80];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra para multiples colores
hb= bar(1:length(data),diag(data),"stacked");
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
title({"DVD Ordered in 2010"},'fontsize',fs);
xlabel('Month','fontsize',fs2,'fontweight','bold');
ylabel({'Number of DVDs Ordered','(millions)'},...
'fontsize',fs2,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'XTick',1:1:length(data))
set(gca,'YTick',0:10:90)
axis([0 length(data)+1 0 90])
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
Ly={"Jan","Feb","Mar","Apr","May","Jun",...
"Jul","Aug","Sept","Oct","Nov","Dec"};
set(gca,'yticklabel',y2,'xticklabel',Ly);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"xminortick","off","xgrid","off", ... 
"ygrid","on","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:length(data)
ht=text(i,data(i)+2,strcat(num2str(data(i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
data1=[13 8 19 37 23];
hp1=pie(data1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=length(data1);
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
axis([-2,2,-2,2]);
title({"DVDs Ordered in December 2010"},...
       'fontsize',fs);
data1=[13 8 19 37 23];
vstring={"Children's","Horror","Drama",... 
"Comedy","Action"};
for i=2:2:size(hp1,1)
vp=get(hp1(i),"position");
r=sqrt(vp(1)^2+vp(2)^2);
va=atan2(vp(2),vp(1));
vp=2.1*[cos(va) sin(va) 0];
set(hp1(i),'position',vp)
set(hp1(i),'string',strcat(vstring(i/2),"\n",num2str(data1(i/2)),"%"))
set(hp1(i),'fontsize',18,'fontweight','bold', ...
"horizontalalignment","center","verticalalignment","top");
%"baseline","bottom","cap","middle","top"
set(hp1(i-1),'facecolor',Mcolor(i/2,:));
dvertices=get(hp1(i-1),"vertices");
set(hp1(i-1),"vertices",1.25*dvertices)
dxdata=get(hp1(i-1),"xdata");
set(hp1(i-1),"xdata",1.25*dxdata)
dydata=get(hp1(i-1),"ydata");
set(hp1(i-1),"ydata",1.25*dydata)
endfor