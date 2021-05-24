close all; clear all; clc;
n=randi([2 5]);
n=5;
data=randi([1 10],1,n);
hp=pie3(data);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=n;
opc=randi([1 18]);
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:length(data)
%cara inferior sector circular %4i-3
set(hp(4*i-3),'facecolor',Mcolor(i,:),'facealpha',1, ...
'edgecolor',[0 0 0],'edgealpha',1, ...
'linestyle','-','linewidth',0.5, ...
'marker','none','markersize',6)
%cara lateral/ arco circular %4i-2
set(hp(4*i-2),'facecolor',Mcolor(i,:),'facealpha',1, ...
'edgecolor',[0 0 0],'edgealpha',1, ...
'linestyle','-','linewidth',0.5, ...
'marker','none','markersize',6)
%cara superior sector circular %4i-1
set(hp(4*i-1),'facecolor',Mcolor(i,:),'facealpha',1, ...
'edgecolor',[0 0 0],'edgealpha',1, ...
'linestyle','-','linewidth',0.5, ...
'marker','none','markersize',6)
%texto/label etiquetas %4i
set(hp(4*i),'color',[0 0 0],'fontsize',20, ...
'fontweight','bold','string',strcat(num2str(data(i)),'%'), ...
'horizontalalignment','left', ...
'interpreter','tex','linestyle','-','linewidth',0.50, ...
'edgecolor','none','backgroundcolor','none')
%'position',[0  -1.2  -0.05],
endfor
fz=1.25;
zoom(fz);
axis on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Lcolor={"jet","cubehelix","hsv","rainbow","hot","cool",
"spring","summer","autumn","winter","gray","bone",
"copper","pink","ocean","flag","lines","prism"};
title(upper(Lcolor(opc)),'fontsize',26);
