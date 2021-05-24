%xmin=
clear all; close all; clc;
figure('position',[1 21 1366 670], ...
'name','Interquartile Range BoxPlot')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function boxplot2(vnl,vd)
fs3=16;
vc=[0 0 0];
xmin=vnl(1);
xmax=vnl(2);
xm=(xmin+xmax)/2;
xi=[1; 1]*xm;
yi=[0; 0];
xf=[-xm; xm];
yf=[0; 0];
hold on;
h=quiver(xi,yi,xf,yf,0,'color',vc,"linewidth",4);
set(h,"maxheadsize", 0.02);
##h=quiver(xi(2),yi(2),xf(2),yf(2),0,'b',"linewidth",4);
##set(h,"maxheadsize", 0.02);
%axis equal;
xlim([xmin-1 xmax+1]);
ylim([-1 2]);
for i=xmin:1:xmax
plot([i i],[-0.25 0.25],'color',vc,"linewidth",4)
ht=text(i,-1,num2str(i));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%
%vd=[1,2,4,5,14];
plot([vd(1) vd(5)],[1 1],'.','markersize',30,'color',vc)
plot([vd(1) vd(2)],[1 1],'-'.','linewidth',3,'color',vc)
plot([vd(2) vd(2)],[0.5 1.5],'-'.','linewidth',3,'color',vc)
plot([vd(3) vd(3)],[0.5 1.5],'-'.','linewidth',3,'color',vc)
plot([vd(4) vd(4)],[0.5 1.5],'-'.','linewidth',3,'color',vc)
plot([vd(4) vd(5)],[1 1],'-'.','linewidth',3,'color',vc)
plot([vd(2) vd(4)],[0.5 0.5],'-'.','linewidth',3,'color',vc)
plot([vd(2) vd(4)],[1.5 1.5],'-'.','linewidth',3,'color',vc)
hold off;
axis off;
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(5,1,1)
boxplot2([1 21],[4,6,12,16,21])
subplot(5,1,2)
boxplot2([1 21],[1,2,6,8,14])
subplot(5,1,3)
boxplot2([1 21],[5,6,8,14,15])
subplot(5,1,4)
boxplot2([1 21],[4,6,11,12,20])
subplot(5,1,5)
boxplot2([1 21],[1,2,4,5,14])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs=24;
ha1=annotation ("textbox", [0.09 0.84 0.85 0.99], "string", ...
             {'A'}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [0 0 0], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','-','linewidth',0.1);
ha1=annotation ("textbox", [0.09 0.66 0.85 0.99], "string", ...
             {'B'}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [0 0 0], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','-','linewidth',0.1);
ha1=annotation ("textbox", [0.09 0.485 0.85 0.99], "string", ...
             {'C'}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [0 0 0], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','-','linewidth',0.1);
ha1=annotation ("textbox", [0.09 0.31 0.85 0.99], "string", ...
             {'D'}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [0 0 0], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','-','linewidth',0.1);
ha1=annotation ("textbox", [0.09 0.13 0.85 0.99], "string", ...
             {'E'}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [0 0 0], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','-','linewidth',0.1);

