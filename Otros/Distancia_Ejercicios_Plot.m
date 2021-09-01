clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Distancia entre dos Puntos', ...
''));
function d=pdist2(x,y)
 d=((x(2)-x(1))^2+(y(2)-y(1))^2);
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=25; vc1=[0 0 1]; vc2=[1 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(2,3,1)
x = [-2 -7];
y = [3 -7];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
ht=text(mean(x-0.5),mean(y-2),strcat('\surd ',num2str(pdist2(x, y))),... 
    'interpreter','tex','fontsize',fs);
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
subplot(2,3,2)
x = [5 -7];
y = [9 -7];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
ht=text(mean(x-5),mean(y+1),strcat('\surd ',num2str(pdist2(x, y))),... 
    'interpreter','tex','fontsize',fs);
hold off;
title({'(5,9),(-7,-7)'}, ...
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
subplot(2,3,3)
x = [-10 -8];
y = [-7 1];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
ht=text(mean(x),mean(y-2),strcat('\surd ',num2str(pdist2(x, y))),... 
    'interpreter','tex','fontsize',fs);
hold off;
title({'(-10,-7),(-8,1)'}, ...
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
subplot(2,3,4)
x = [2 -1];
y = [-9 4];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
ht=text(mean(x+1),mean(y-2),strcat('\surd ',num2str(pdist2(x, y))),... 
    'interpreter','tex','fontsize',fs);
hold off;
title({'(2,-9),(-1,4)'}, ...
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
subplot(2,3,5)
x = [8 -1];
y = [5 3];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
ht=text(mean(x-0.5),mean(y-2),strcat('\surd ',num2str(pdist2(x, y))),... 
    'interpreter','tex','fontsize',fs);
hold off;
title({'(8,5),(-1,3)'}, ...
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
subplot(2,3,6)
x = [-6 -2];
y = [-10 -10];
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
ht=text(mean(x-2),mean(y+2),strcat('\surd ',num2str(pdist2(x, y))),... 
    'interpreter','tex','fontsize',fs);
hold off;
title({'(-6,-10),(-2,-10)'}, ...
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

