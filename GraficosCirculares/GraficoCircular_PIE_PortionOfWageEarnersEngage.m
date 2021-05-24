clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico Circular',...
 ' - PORTION OF WAGE EARNERS ENGAGED IN VARIOUS OCCUPATIONS'));
data1=[120 30 20 90 70 30];
%360 grados total
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
title({"PORTION OF WAGE EARNERS ENGAGED",...
       "IN VARIOUS OCCUPATIONS", ...
       "(Number of degrees represent angles on circle graph)"},...
       'fontsize',fs);
data1=[120 30 20 90 70 30];
##vstring={{{"Manufacturing","120°"}}, ...
##         {"Transportation","30°"}, ...
##         {"Professional","20°"},...
##         {"Commerce","90°"},...
##         {"Other Occupations","70°"},...
##         {"Personal Services","30°"}};
vstring={"120°","30°","20°","90°","70°","30°"};
for i=2:2:size(hp1,1)
set(hp1(i),'string',cellstr(vstring(i/2)))
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
%etiqueta de la legenda
vstring={"Manufacturing 120°", ...
         "Transportation 30°", ...
         "Professional 20°",...
         "Commerce 90°",...
         "Other Occupations 70°",...
         "Personal Services 30°"};
hl=legend(vstring);
legend(hl,"location","northeastoutside");
set(hl,"fontsize", 30);
