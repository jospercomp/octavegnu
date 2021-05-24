clear all; close all; clc;
figure('position',[1 21 1366 670], ...
'name','Interval Notation')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function boxplot2(vnl)
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
set(h,"maxheadsize", 0.01);
##h=quiver(xi(2),yi(2),xf(2),yf(2),0,'b',"linewidth",4);
##set(h,"maxheadsize", 0.02);
%axis equal;
xlim([xmin-1 xmax+1]);
ylim([-1 2]);
axis([-1 12 -1 2])
for i=xmin:1:xmax
plot([i i],[-0.25 0.25],'color',vc,"linewidth",4)
%ht=text(i,-1,num2str(i));
%set(ht,'fontsize',fs3,'fontweight','bold', ...
%'verticalalignment','bottom', ...
%'horizontalalignment','center')
endfor
plot(xmin-1, 0, "<","markersize",10,"markeredgecolor", [0 0 0], ...
"markerfacecolor",[0 0 0])
plot(xmax+1, 0, ">", "markersize",10,"markeredgecolor", [0 0 0], ...
"markerfacecolor",[0 0 0])
%‘>’	right-facing triangle
%‘<’	left-facing triangle
%%%%%%%%%%%%%%%%%%%%%%%%%%
hold off;
axis off;
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,3,1)
boxplot2([1 10])
subplot(4,3,4)
boxplot2([1 10])
subplot(4,3,7)
boxplot2([1 10])
subplot(4,3,10)
boxplot2([1 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,3,2)
boxplot2([1 10])
subplot(4,3,5)
boxplot2([1 10])
subplot(4,3,8)
boxplot2([1 10])
subplot(4,3,11)
boxplot2([1 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,3,3)
boxplot2([1 10])
subplot(4,3,6)
boxplot2([1 10])
subplot(4,3,9)
boxplot2([1 10])
subplot(4,3,12)
boxplot2([1 10])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs=24;
ha1=annotation ("textbox", [0.445 0.95 0.85 0.99], "string", ...
{'Interval Notation'}, ...
"fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
"fitboxtotext", "on", "verticalalignment", "top", ...
"horizontalalignment", "center",'linestyle','-','linewidth',0.1);