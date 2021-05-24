close all; clear all; clc;
hp=pie3([10]);
set(hp(1),'facecolor',[1 0 0],'facealpha',1, ...
'edgecolor',[0 0 0],'edgealpha',1, ...
'linestyle','-','linewidth',0.5, ...
'marker','none','markersize',6)
%cara inferior sector circular
%4n+1
set(hp(2),'facecolor',[0 1 0],'facealpha',1, ...
'edgecolor',[0 0 0],'edgealpha',1, ...
'linestyle','-','linewidth',0.5, ...
'marker','none','markersize',6)
%cara lateral/ arco circular
%4n+2
set(hp(3),'facecolor',[0 0 1],'facealpha',1, ...
'edgecolor',[0 0 0],'edgealpha',1, ...
'linestyle','-','linewidth',0.5, ...
'marker','none','markersize',6)
%cara superior sector circular
%4n+3
set(hp(4),'color',[1 0 1],'fontsize',20, ...
'fontweight','bold','string','100%', ...
'position',[0  -1.2  -0.05],'horizontalalignment','left', ...
'interpreter','tex','linestyle','-','linewidth',0.50, ...
'edgecolor','none','backgroundcolor','none')
%texto/label etiquetas 
%4n+4
fz=1.25;
zoom(fz);
axis on;
