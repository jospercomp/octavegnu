clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Rectas Perpendiculares');
lw=3; ms=40; fs=16;
vc1=[0 0 1];
vc2=[1 0 0];
vc3=[0 0 0];
x = linspace(-10,10,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
title({'Comportamiento Lineal','Aumentando Rapidamente'},...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
x2(i)=strcat(num2str(""));
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
title({'Comportamiento Lineal','Disminuyendo Lentamente'},...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
x2(i)=strcat(num2str(""));
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
title({'Comportamiento Lineal','Disminuyendo Rapidamente'},...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
x2(i)=strcat(num2str(""));
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
title({'Comportamiento Lineal','Aumentando Lentamente'},...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([0 10 0 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
x2(i)=strcat(num2str(""));
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
