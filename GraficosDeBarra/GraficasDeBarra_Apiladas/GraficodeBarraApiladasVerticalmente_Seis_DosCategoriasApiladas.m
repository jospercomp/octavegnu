%Grafico de Seis Barra Apiladas Verticalmente
%Stacked Six Bar Graph Vertically
clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
%%%%%%%%%%%%%%%%%%%%%%%%%
data=[934 131; 790 193; 271 528;308 207;253 158;205 170];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra
h=figure('Position',[1 21 1366 670], ...
'Name','Gráfico de Barra Apiladas Verticalmente');
hb=bar(data, "stacked");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=size(data,2);
opc=randi([1 18]);
%opc=8;
switch(mod(opc,18))
case 1
Mcolor=jet(ncolor);
case 2
Mcolor=cubehelix(ncolor);
case 3
Mcolor=hsv(ncolor);
case 4
Mcolor=rainbow(ncolor);
case 5
Mcolor=hot(ncolor);
case 6
Mcolor=cool(ncolor);
case 7
Mcolor=spring(ncolor);
case 8
Mcolor=summer(ncolor);
case 9
Mcolor=autumn(ncolor);
case 10
Mcolor=winter(ncolor);
case 11
Mcolor=gray(ncolor);
case 12
Mcolor=bone(ncolor);
case 13
Mcolor=copper(ncolor);
case 14
Mcolor=pink(ncolor);
case 15
Mcolor=ocean(ncolor);
case 16
Mcolor=flag(ncolor);
case 17
Mcolor=lines(ncolor);
case 0
Mcolor=prism(ncolor);
otherwise
endswitch
for i=1:size(data,2)
set(hb(i),"facecolor",Mcolor(i,:))
endfor
%%%%%%%%%%%%%%%%%%%%%
title({"Agency for International Development", ...
       "EXPENDITURES ABROAD","(Millons of Dollars)"}, ...
'fontsize',fs,'fontweight','bold');
xtickL=1961:1:1966;
set(gca,'xtick',1:6,'xticklabel',xtickL, ...
'fontsize',fs2,'fontweight','bold');
set(gca,"xminortick","off","xgrid","off", ...
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
axis([0 7 0 1100])
grid off;
%set(gca,"xaxislocation", "bottom");
%set(gca,"yaxislocation","origin");
box off;
%etiqueta de la legenda
acell={'Balance of Payments','Receipt of Loan Payments'};
hl=legend(acell);
legend(hl,"location","northeastoutside");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:6
ht=text(i,data(i,1)+data(i,2)+10,...
strcat(num2str(data(i,1)+data(i,2)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%
data1cs=cumsum(data(1,:));
data2cs=cumsum(data(2,:));
data3cs=cumsum(data(3,:));
data4cs=cumsum(data(4,:));
data5cs=cumsum(data(5,:));
data6cs=cumsum(data(6,:));
for i=1:size(data,2)
if i==1
ldata1=data(1,i)/2;
ldata2=data(2,i)/2;
ldata3=data(3,i)/2;
ldata4=data(4,i)/2;
ldata5=data(5,i)/2;
ldata6=data(6,i)/2;
else
ldata1=[ldata1 (data1cs(i-1)+(data(1,i))/2)];
ldata2=[ldata2 (data2cs(i-1)+(data(2,i))/2)];
ldata3=[ldata3 (data3cs(i-1)+(data(3,i))/2)];
ldata4=[ldata4 (data4cs(i-1)+(data(4,i))/2)];
ldata5=[ldata5 (data5cs(i-1)+(data(5,i))/2)];
ldata6=[ldata6 (data6cs(i-1)+(data(6,i))/2)];
endif
endfor
for i=1:size(data,2)
ht=text(1,ldata1(i),strcat(num2str(data(1,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(2,ldata2(i),strcat(num2str(data(2,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(3,ldata3(i),strcat(num2str(data(3,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(4,ldata4(i),strcat(num2str(data(4,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(5,ldata5(i),strcat(num2str(data(5,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(6,ldata6(i),strcat(num2str(data(6,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:100:1100;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str(""));
else
y2(i)=strcat(num2str(yl(i)),"");
endif
endfor
set(gca,'ytick',yl,'yticklabel',y2);
set(gca,"xminortick","off","xgrid","off", ...
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"