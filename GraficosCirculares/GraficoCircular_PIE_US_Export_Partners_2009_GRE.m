clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat("Gráfico Circular ", ...
" - Export Partners 2009"));
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.85 0.99], "string", ...
             {''}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
data1=[29;20;6;4;41];
hp1=pie(data1);
title({"Export Partners 2009"},"fontsize",20);
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
for i=2:2:size(hp1,1)
set(hp1(i),'string',cellstr(strcat(num2str(data1(i/2)),"%")))
set(hp1(i),'fontsize',18,'fontweight','bold', ...
"horizontalalignment","center","verticalalignment","top");
%"baseline","bottom","cap","middle","top"
vp=get(hp1(i),"position");
r=sqrt(vp(1)^2+vp(2)^2);
va=atan2(vp(2),vp(1));
vp=2.3*[cos(va) sin(va) 0];
set(hp1(i),'position',vp)
set(hp1(i-1),'facecolor',Mcolor(i/2,:));
dvertices=get(hp1(i-1),"vertices");
set(hp1(i-1),"vertices",1.41*dvertices)
dxdata=get(hp1(i-1),"xdata");
set(hp1(i-1),"xdata",1.41*dxdata)
dydata=get(hp1(i-1),"ydata");
set(hp1(i-1),"ydata",1.41*dydata)
endfor
%etiqueta de la legenda
vstring={"France", ...
         "U.S.", ...
         "Germany",...
         "China",...
         "Others"};
hl=legend(vstring);
legend(hl,"location","northeast");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%