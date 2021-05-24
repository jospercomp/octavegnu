close all; clear all; clc;
hf=figure('Position',[1 21 1366 670], ...
"name","Gráfica de Colores - Traslación, Dilatación & Alargamiento - Función Seno");
ms=40; fs=20; lw=4;
x=linspace(-pi,pi,50);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=19;
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
  for j=1:ncolor
      plot(2*j*x,2*j*sin(x),'color',Mcolor(j,:), ...
      'linewidth',lw)
  endfor 
hold off;
Lcolor={"jet","cubehelix","hsv","rainbow","hot","cool",
"spring","summer","autumn","winter","gray","bone",
"copper","pink","ocean","flag","lines","prism"};
title(upper(strcat(Lcolor(opc)," COLORMAP")),'fontsize',20)
set(gca,'xtick',-150:50:150,'xticklabel',-150:50:150);
set(gca,'ytick',-40:10:40,'yticklabel',-40:10:40);
set(gca,'fontsize',16,'fontweight','bold');
