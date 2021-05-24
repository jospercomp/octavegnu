close all; clear all; clc;
ms=40; fs=20;
data=[4 3 5 1];
data=randi([0 20],1,10);
xmax=length(data)+1;
ymax=max(data)+1;
title('Gráfica de Puntos','fontsize',fs)
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
hold on;
for i=1:length(data)
  x=i*ones(1,data(i));
  y=1:data(i);
  plot(x,y,'.','markersize',ms,'color',Mcolor(i,:))
endfor
hold off;
set(gca,'xtick',1:length(data),'yticklabel',1:length(data));
set(gca,'ytick',1:ymax-1,'yticklabel',1:ymax-1);
axis([0 xmax 0 ymax])

