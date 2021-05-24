clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico Circular',...
 ' - DAILY WATER INTAKE AND OUTPUT'));
subplot(1,2,1)
data1=[1000,1500];
hp1=pie(data1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=length(data1);
opc=randi([1 18]);
opc=8;
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
Mcolor=ocean(ncolor+3); 
case 16
Mcolor=flag(ncolor);
case 17
Mcolor=lines(ncolor);
case 0
Mcolor=prism(ncolor);
otherwise
endswitch
axis([-2,2,-2,2]);
title({"DAILY WATER INTAKE", ... 
       "GRAPH I"},...
       'fontsize',fs);
data1=[1000,1500];
vstring={{{"Solid Food","1000 cc."}}, ...
         {"Fluid","1500 cc."}, ...
         };
for i=2:2:size(hp1,1)
set(hp1(i),'string',cellstr(vstring(i/2)))
set(hp1(i),'fontsize',18,'fontweight','bold', ...
"horizontalalignment","center","verticalalignment","top");
set(hp1(i-1),'facecolor',Mcolor(i/2,:));
dvertices=get(hp1(i-1),"vertices");
set(hp1(i-1),"vertices",1.41*dvertices)
dxdata=get(hp1(i-1),"xdata");
set(hp1(i-1),"xdata",1.41*dxdata)
dydata=get(hp1(i-1),"ydata");
set(hp1(i-1),"ydata",1.41*dydata)
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
data2=[100,500,400,1500];
hp2=pie(data2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=length(data2);
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
title({"DAILY WATER OUTPUT", ... 
       "GRAPH II"},...
       'fontsize',fs);
data2=[100,500,400,1500];
vstring={{"Solid Wastes","100 cc."}, ...
          {"Sweet","500 cc."}, ...
          {"Lungs","400 cc."},...
          {"Liquid Wastes-Kidneys","100 cc."}};
for i=2:2:size(hp2,1)
set(hp2(i),'string',cellstr(vstring(i/2)))
vp=get(hp2(i),"position");
r=sqrt(vp(1)^2+vp(2)^2);
va=atan2(vp(2),vp(1));
vp=1.7*[cos(va) sin(va) 0];
set(hp2(i),'position',vp)
set(hp2(i),'fontsize',15,'fontweight','bold');
set(hp2(i-1),'facecolor',Mcolor(i/2,:));
dvertices=get(hp2(i-1),"vertices");
set(hp2(i-1),"vertices",1.2*dvertices)
dxdata=get(hp2(i-1),"xdata");
set(hp2(i-1),"xdata",1.2*dxdata)
dydata=get(hp2(i-1),"ydata");
set(hp2(i-1),"ydata",1.2*dydata)
endfor