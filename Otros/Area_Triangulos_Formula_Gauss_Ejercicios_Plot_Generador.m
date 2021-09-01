clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Área en Triángulos por la Fórmula de Gauss', ...
''));
function A=areaG(x,y)
 A=0.5*abs((x(1)*y(2))+(x(2)*y(3))+x(3)*y(1)+...
  -(x(2)*y(1)+x(3)*y(2)+x(1)*y(3)));
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=25; vc1=[0 0 1]; vc2=[1 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
for i=1:8            
subplot(2,4,i)
x = randi([-10 10],3,1);
y = randi([-10 10],3,1);
hold on;
plot([x; x(1)],[y; y(1)],'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
xlabel(strcat('A=',num2str(areaG(x, y)),' u^2'), ... 
    'interpreter','tex','fontsize',fs);
hold off;
title({strcat('(',num2str(x(1)),',',num2str(y(1)),'),(', ...
        num2str(x(2)),',',num2str(y(2)),'),(', ...
        num2str(x(3)),',',num2str(y(3)),')')}, ...
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