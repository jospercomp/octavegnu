%Grafico de Barra Apiladas Verticalmente
%Stacked Bar Graph Vertically
clear all; close all; clc;
fs=24; fs2=22;
fs3=14;
lw=3; ms=10;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico de Líneas & Gráfico Circular',...
 ' - Bear Sightings'));
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,1)
D=2000:1:2009;
G=[250 300 250 250 200 200 350 400 200 250]; 
plot(D,G,'linewidth',lw,D,G,'s','markersize',ms)
title({"Number of Bear Sightings"})
xlabel("Year",'fontsize',14,"fontweight",'bold')
ylabel("Number of Sightings",'fontsize',14,"fontweight",'bold')
set(gca,'XTick',D)
set(gca,'YTick',0:50:450)
axis([1999 2010 0 450])
%set(gca,'xticklabel',1:1:14,'yticklabel',60:2:80);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","off","gridalpha",1,'gridcolor',[0 0 0]);
for i=1:length(D) 
  text(D(i)+0.3,G(i)+15,num2str(G(i)), ...
  'fontsize',14,"fontweight",'bold')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
data1=[15 20 10 25 30];
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
title({"Typical Reason for Bear Sightings"},...
       'fontsize',fs);
data1=[15 20 10 25 30];
vstring={"Property Damage","On Road","Pets/Livestock",... 
"Birdfeeders","Trash"};
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