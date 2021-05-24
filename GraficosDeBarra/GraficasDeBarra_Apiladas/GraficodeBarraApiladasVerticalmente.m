%Grafico de Barra Apiladas Verticalmente
%Stacked Bar Graph Vertically
clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
%%%%%%%%%%%%%%%%%%%%%%%%%
data=[34.7 20.2 19.4 25.7; 41.9 23.5 18.7 16;];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
h=figure('Position',[1 21 1366 670], ...
'Name','Gráfico de Barra Apiladas Verticalmente');
h=bar(data, "stacked");
title({"Family size", "1965 and 1950"}, ...
'fontsize',fs,'fontweight','bold');
set(gca,'xtick',[1 2],'xticklabel',[1965 1950], ...
'fontsize',fs2,'fontweight','bold');
set(gca,"xminortick","off","xgrid","off", ... 
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
axis([0 3 0 100])
grid off;
%set(gca,"xaxislocation", "bottom");
%set(gca,"yaxislocation","origin");
box off;
%etiqueta de la legenda
acell={'Without Children','One child','Two children','Three or more children'};
hl=legend(acell);
legend(hl,"location","northeastoutside");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:2
ht=text(i,100+0.7,"100%");
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%
data1cs=cumsum(data(1,:));
data2cs=cumsum(data(2,:));
for i=1:size(data,2)
if i==1
ldata1=data(1,i)/2;
ldata2=data(2,i)/2;
else
ldata1=[ldata1 (data1cs(i-1)+(data(1,i))/2)];
ldata2=[ldata2 (data2cs(i-1)+(data(2,i))/2)];
endif 
endfor
for i=1:size(data,2)
ht=text(1,ldata1(i),strcat(num2str(data(1,i)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(2,ldata2(i),strcat(num2str(data(2,i)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:10:100;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str(""));
else
y2(i)=strcat(num2str(yl(i)),"%");
endif
endfor
set(gca,'ytick',yl,'yticklabel',y2);
set(gca,"xminortick","off","xgrid","off", ... 
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"
