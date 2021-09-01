clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Distancia entre dos Puntos', ...
''));
function d=pdist2(x,y)
 d=((x(2)-x(1))^2+(y(2)-y(1))^2);
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=25; vc1=[0 0 1]; vc2=[1 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
for i=1:8            
subplot(2,4,i)
x = randi([-10 10],2,1);
y = randi([-10 10],2,1);
hold on;
plot(x,y,'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
xlabel(strcat('d=\surd ',num2str(pdist2(x, y)), ...
    '\approx',num2str(sqrt(pdist2(x, y)))),... 
    'interpreter','tex','fontsize',fs);
hold off;
title({strcat('(',num2str(x(1)),',',num2str(y(1)),'),(', ...
        num2str(x(2)),',',num2str(y(2)),')')}, ...
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
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             