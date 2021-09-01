clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Área en Triángulos', ...
' por la Fórmula de Heron'));
function d=pdist2(x,y)
 d=((x(2)-x(1))^2+(y(2)-y(1))^2);
endfunction
function A=areaH(a,b,c)
 s=(a+b+c)/2;
 A=sqrt(s*(s-a)*(s-b)*(s-c));
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=25; vc1=[0 0 1]; vc2=[1 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
for i=1:8            
subplot(2,4,i)
%x = randi([-10 10],3,1);
%y = randi([-10 10],3,1);
xv = randperm(21)-11;
yv = randperm(21)-11;
x= xv(1:3)';
y= yv(1:3)';
hold on;
plot([x; x(1)],[y; y(1)],'-','linewidth',lw,'color',vc1);
plot(x,y,'.','markersize',ms,'color',vc2);
a=pdist2(x(1:2),y(1:2));
b=pdist2(x(2:3),y(2:3));
c=pdist2([x(3) x(1)],[y(3) y(1)]);
xlabel(strcat('A=',num2str(areaH(sqrt(a), sqrt(b),sqrt(c))),' u^2'), ... 
    'interpreter','tex','fontsize',fs);
text(mean(x(1:2)),mean(y(1:2)),'a', ...
     'fontsize',0.5*fs,'fontweight','bold','backgroundcolor',[1 1 1])
text(mean(x(2:3)),mean(y(2:3)),'b', ...
     'fontsize',0.5*fs,'fontweight','bold','backgroundcolor',[1 1 1])
text(mean([x(3) x(1)]),mean([y(3) y(1)]),'c', ...
     'fontsize',0.5*fs,'fontweight','bold','backgroundcolor',[1 1 1])
title(strcat('a=\surd',num2str(a),' b=\surd',num2str(b),' c=\surd',num2str(c)))     
hold off;
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