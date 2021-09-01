clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Punto Medio', ...
''));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=25; vc1=[0 0 1]; vc2=[1 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,1)
x = [5 -4];
y = [2 -3];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(5,2),(-4,-3)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,2)
x = [2 -6];
y = [-1 0];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(2,-1),(-6,0)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,3)
x = [-5.1 1.4];
y = [-2 1.7];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(-5.1,-2),(1.4,1.7)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,4)
x = [5.1 6];
y = [5.71 3.6];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(5.1,5.71),(6,3.6)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,5)
x = [-1 5];
y = [1 -5];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(-1,1),(5,-5)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,6)
x = [-3.1 -4.92];
y = [-2.8 -3.3];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(-3.1,-2.8),(-4.92,-3.3)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,7)
x = [4.9 -5.2];
y = [-1.3 -0.6];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(4.9,-1.3),(-5.2,-0.6)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,4,8)
x = [3.1 -0.52];
y = [-2.1 -0.6];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot([x mean(x)],[y mean(y)],'.','markersize',ms,'color',vc2);
hold off;
title({'(3.1,-2.1),(-0.52,-0.6)'}, ...
'fontsize',fs,'fontweight','bold')
axis([-11 11 -11 11])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
set(gca,'ytick',-11:1:11);
set(gca,'xtick',-11:1:11);
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
