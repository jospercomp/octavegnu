clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Grid and Axes Colors Properties');
vgc=[1 0 0];
vmgc=[155/255 23/255 1];
vxc=[1 0 1];
vyc=[1 155/255 23/255];
fs=20;
%%xgrid,ygrid,gridalpha,gridcolor
%%yminorgrid,minorgridalpha,minorgridcolor
%%xcolor,ycolor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,1);
plot(1:10);
set(gca,"gridalpha",0,'gridcolor',vgc)
set(gca,"xcolor",vxc,'ycolor',vyc)
grid off;
title("grid off",'fontsize',fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,2);
plot(1:10);
set(gca,"gridalpha",1,'gridcolor',vgc)
set(gca,"xcolor",vxc,'ycolor',vyc)
grid on;
title("grid on",'fontsize',fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,3);
plot(1:10);
set(gca,"xgrid","on","gridalpha",1,'gridcolor',vgc);
set(gca,"xcolor",vxc,'ycolor',vyc)
title("xgrid on",'fontsize',fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,4);
plot(1:10);
set(gca,"ygrid","on","gridalpha",1,'gridcolor',vgc);
set(gca,"xcolor",vxc,'ycolor',vyc)
title("ygrid on",'fontsize',fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,5);
plot(1:10);
grid minor;
set(gca,"minorgridalpha",1,'minorgridcolor',vmgc);
set(gca,"xcolor",vxc,'ycolor',vyc)
title("grid minor",'fontsize',fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,6);
plot (1:100);
set(gca,"yminorgrid","on","minorgridalpha",1,'minorgridcolor',vmgc);
set(gca,"xcolor",vxc,'ycolor',vyc)
title("yminorgrid on",'fontsize',fs);