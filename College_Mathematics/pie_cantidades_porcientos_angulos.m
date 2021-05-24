clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico Circular',...
' - Cantidad, Porciento & Grados Angulares'));
data1=[9 9 1 2 10];
dataT=sum(data1);
dataP=round(10*(data1/dataT)*100)/10;
dataG=round((data1/dataT)*360);
%360 grados total
subplot(1,3,1)
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
title({"Cantidades"},...
'fontsize',fs);
data1=[9 9 1 2 10];
vstring={"C_1","C_2","C_3","C_4","C_5"};
for i=2:2:size(hp1,1)
vp=get(hp1(i),"position");
r=sqrt(vp(1)^2+vp(2)^2);
va=atan2(vp(2),vp(1));
vp=2.1*[cos(va) sin(va) 0];
set(hp1(i),'position',vp)
set(hp1(i),'string',strcat(num2str(data1(i/2)),"\n",vstring(i/2)))
set(hp1(i),'fontsize',14,'fontweight','bold', ...
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,2)
hp1=pie(data1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
axis([-2,2,-2,2]);
title({"Porcientos"},...
'fontsize',fs);
data1=[9 9 1 2 10];
vstring={"C_1","C_2","C_3","C_4","C_5"};
for i=2:2:size(hp1,1)
vp=get(hp1(i),"position");
r=sqrt(vp(1)^2+vp(2)^2);
va=atan2(vp(2),vp(1));
vp=2.1*[cos(va) sin(va) 0];
set(hp1(i),'position',vp)
set(hp1(i),'string',strcat(num2str(dataP(i/2)),"%\n",vstring(i/2)))
set(hp1(i),'fontsize',14,'fontweight','bold', ...
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,3)
hp1=pie(data1);
axis([-2,2,-2,2]);
title({"Grados Angulares"},...
'fontsize',fs);
data1=[9 9 1 2 10];
vstring={"C_1","C_2","C_3","C_4","C_5"};
for i=2:2:size(hp1,1)
vp=get(hp1(i),"position");
r=sqrt(vp(1)^2+vp(2)^2);
va=atan2(vp(2),vp(1));
vp=2.1*[cos(va) sin(va) 0];
set(hp1(i),'position',vp)
set(hp1(i),'string',strcat(num2str(dataG(i/2)),"°\n",vstring(i/2)))
set(hp1(i),'fontsize',14,'fontweight','bold', ...
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