clear all; close all; clc;
figure('position',[1 21 1366 670], ...
'name','Desigualdades & Notación de Intervalos')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function intervalplot(vnl,ineqt,intert,caso)
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
plot(xmin-1, 0, "<","markersize",16,"markeredgecolor", [0 0 0], ...
"markerfacecolor",[0 0 0])
plot(xmax+1, 0, ">", "markersize",16,"markeredgecolor", [0 0 0], ...
"markerfacecolor",[0 0 0])
fs=20;
title({ineqt,intert},'interpreter','tex','fontsize',fs)
%‘>’	right-facing triangle
%‘<’	left-facing triangle
%%%%%%%%%%%%%%%%%%%%%%%%%%
switch caso
  case 1
    h=quiver([6 6],[1 1],[5 5],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(11, 1, ">","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(6,1,'.k','markersize',50) 
    plot(6,1,'.w','markersize',30)
  case 2
    h=quiver([6 6],[1 1],[5 5],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(11, 1, ">","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(6,1,'.k','markersize',50)
  case 3
    h=quiver([5 5],[1 1],[-5 -5],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(0, 1, "<","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(5,1,'.k','markersize',50) 
    plot(5,1,'.w','markersize',30)
  case 4
    h=quiver([5 5],[1 1],[-5 -5],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(0, 1, "<","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(5,1,'.k','markersize',50)
  case 5  
    plot([3 8],[1 1],'-k','linewidth',5)
    plot([3 8],[1 1],'.k','markersize',50)
    plot([3 8],[1 1],'.w','markersize',30)
  case 6  
    plot([3 8],[1 1],'-k','linewidth',5)
    plot([3 8],[1 1],'.k','markersize',50)
    plot(8,1,'.w','markersize',30)  
  case 7
    plot([3 8],[1 1],'-k','linewidth',5)
    plot([3 8],[1 1],'.k','markersize',50)
    plot(3,1,'.w','markersize',30)
  case 8  
    plot([3 8],[1 1],'-k','linewidth',5)
    plot([3 8],[1 1],'.k','markersize',50)
  case 9
    h=quiver([4 7],[1 1],[-4 4],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(0, 1, "<","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(11, 1, ">","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot([4 7],[1 1],'.k','markersize',50)
    plot([4 7],[1 1],'.w','markersize',30)
  case 10
    h=quiver([4 7],[1 1],[-4 4],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(0, 1, "<","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(11, 1, ">","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot([4 7],[1 1],'.k','markersize',50)
    plot(7,1,'.w','markersize',30)
  case 11
    h=quiver([4 7],[1 1],[-4 4],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(0, 1, "<","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(11, 1, ">","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot([4 7],[1 1],'.k','markersize',50)
    plot(4,1,'.w','markersize',30)
  case 12
    h=quiver([4 7],[1 1],[-4 4],[0 0],0,'color',[0 0 0],"linewidth",4);
    set(h,"maxheadsize", 0.01);
    plot(0, 1, "<","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot(11, 1, ">","markersize",12,"markeredgecolor", [0 0 0], ...
    "markerfacecolor",[0 0 0])
    plot([4 7],[1 1],'.k','markersize',50)
   otherwise
    printf ("caso %d\n",caso);
endswitch
hold off;
axis off;
set(gca,'yTickLabel',{})
set(gca,'xTickLabel',{})
set(gca,'gridalpha',0)
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,3,1)
hold on;
intervalplot([1 10],'x > a','(a,\infty)',1)
hold off;
subplot(4,3,4)
intervalplot([1 10],'x \geq a','[a,\infty)',2)
subplot(4,3,7)
intervalplot([1 10],'x < b','(-\infty,b)',3)
subplot(4,3,10)
intervalplot([1 10],'x \leq b','(-\infty,b]',4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,3,2)
intervalplot([1 10],'a < x < b','(a,b)',5)
subplot(4,3,5)
intervalplot([1 10],'a \leq x < b','[a,b)',6)
subplot(4,3,8)
intervalplot([1 10],'a < x \leq b','(a,b]',7)
subplot(4,3,11)
intervalplot([1 10],'a \leq x \leq b','[a,b]',8)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(4,3,3)
intervalplot([1 10],'x < a \cup x > b','(-\infty,a) \cup (b,\infty)',9)
subplot(4,3,6)
intervalplot([1 10],'x \leq a \cup x > b','(-\infty,a] \cup (b,\infty)',10)
subplot(4,3,9)
intervalplot([1 10],'x < a \cup x \geq b','(-\infty,a) \cup [b,\infty)',11)
subplot(4,3,12)
intervalplot([1 10],'x \leq a \cup x \geq b','(-\infty,a] \cup [b,\infty)',12)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs=24;
ha1=annotation ("textbox", [0.35 0.95 0.85 0.99], "string", ...
{'Desigualdades & Notación de Intervalos'}, ...
"fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
"fitboxtotext", "on", "verticalalignment", "top", ...
"horizontalalignment", "center",'linestyle','-','linewidth',0.1);