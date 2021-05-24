clear all; close all; clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Axis Alignment of five plots 
%in configuration 
%3 plots-1 row and 2 plots - 2 rows.
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Five Plots of Lineal Segment Graphs',...
 ' - Distance from Home'));
ms=30; lw=4; fs=18;
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
x=[0 5 60 65 70 75 80 90];
y=[0 0.5 0.5 2.5 2.5 0.5 0.5 0];
plot(x,y,'k','linestyle','-','linewidth',lw, ...
     x,y,'k.','markersize',ms)
ylabel('Distance from Home (miles)','fontsize',fs,'fontweight','bold');
xlabel('Time (minutes)','fontsize',fs,'fontweight','bold');
title('Graph A','fontsize',fs,'fontweight','bold')
box off;
set(gca,'XTick',0:10:max(x))
set(gca,'YTick',0:0.5:2.5)
set(gca,'xticklabel',0:10:max(x),'yticklabel',0:0.5:2.5);
ax1=get(gca,'position');
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
x=[0 15 45 60 75 90 105];
y=[0 0.5 0.5 2.5 2.5 0.5 0];
plot(x,y,'k','linestyle','-','linewidth',lw, ...
     x,y,'k.','markersize',ms)
ylabel('Distance from Home (miles)','fontsize',fs,'fontweight','bold');
xlabel('Time (minutes)','fontsize',fs,'fontweight','bold');
title('Graph B','fontsize',fs,'fontweight','bold')
set(gca,'XTick',0:10:max(x))
set(gca,'YTick',0:0.5:2.5)
set(gca,'xticklabel',0:10:max(x),'yticklabel',0:0.5:2.5);
box off;
ax2=get(gca,'position');
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
x=[0 10 45 55 90 100 110];
y=[0 0.5 2.5 2.5 0.5 0.5 0];
plot(x,y,'k','linestyle','-','linewidth',lw, ...
     x,y,'k.','markersize',ms)
ylabel('Distance from Home (miles)','fontsize',fs,'fontweight','bold');
xlabel('Time (minutes)','fontsize',fs,'fontweight','bold');
title('Graph C','fontsize',fs,'fontweight','bold')
set(gca,'XTick',0:10:max(x))
set(gca,'YTick',0:0.5:2.5)
set(gca,'xticklabel',0:10:max(x),'yticklabel',0:0.5:2.5);
box off;
ax3=get(gca,'position');
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
x=[0 15 30 60 75 90 105 120 135];
y=[0 0 0.5 0.5 2.5 2.5 0.5 0.5 0];
plot(x,y,'k','linestyle','-','linewidth',lw, ...
     x,y,'k.','markersize',ms)
ylabel('Distance from Home (miles)','fontsize',fs,'fontweight','bold');
xlabel('Time (minutes)','fontsize',fs,'fontweight','bold');
title('Graph D','fontsize',fs,'fontweight','bold')
set(gca,'XTick',0:10:max(x))
set(gca,'YTick',0:0.5:2.5)
set(gca,'xticklabel',0:10:max(x),'yticklabel',0:0.5:2.5);
box off;
ax4=get(gca,'position');
set(gca,"position", [ax4(1)+0.15, ax4(2), ax4(3), ax4(4)]);
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
x=[0 5 30 60 61 65 75 90 95];
y=[0 0.5 0.5 0.5 2.5 2.5 0.5 0.5 0];
plot(x,y,'k','linestyle','-','linewidth',lw, ...
     x,y,'k.','markersize',ms)
ylabel('Distance from Home (miles)','fontsize',fs,'fontweight','bold');
xlabel('Time (minutes)','fontsize',fs,'fontweight','bold');
title('Graph E','fontsize',fs,'fontweight','bold')
set(gca,'XTick',0:10:max(x))
set(gca,'YTick',0:0.5:2.5)
set(gca,'xticklabel',0:10:max(x),'yticklabel',0:0.5:2.5);
box off;
ax5=get(gca,'position');
set(gca,"position", [ax5(1)-0.15, ax5(2), ax5(3), ax5(4)]);