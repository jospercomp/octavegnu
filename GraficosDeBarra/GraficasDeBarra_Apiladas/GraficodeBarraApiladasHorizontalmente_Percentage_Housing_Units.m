%Grafico de Barra Apiladas Verticalmente
%Stacked Bar Graph Vertically
clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=3; ms=10;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico de Barra Apiladas Horizontalmente',...
' - Percent of Housing Units by Years Built'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
data=[15 28 27 15 15;
      25 40 25 8 2;
      25 35 25 10 5;
      8 17 20 20 35;
      15 25 25 15 20;
      10 15 30 25 20];
hb=barh(data,"stacked");
set(gca,"xminortick","off","xgrid","off", ... 
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
ncolor=4;
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
%%%%%%%%%%%%%%%%%%%%%%%
%etiqueta de la legenda
acell={'Built 2000 or later', ...
       'Built 1980 or 1999', ...
       'Built 1960 or 1979', ...
       'Built 1940 or 1959', ...
       'Built 1939 or earlier'};
hl=legend(acell);
legend(hl,"location","eastoutside");
set(hl,"fontsize", 40);
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
%%%%%%%%%%%%%%%%%%%%%%%
for i=1:size(data,2)
ht=text(ldata1(i),1,strcat(num2str(data(1,i)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(ldata2(i),2,strcat(num2str(data(2,i)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(ldata3(i),3,strcat(num2str(data(3,i)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(ldata4(i),4,strcat(num2str(data(4,i)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(ldata5(i),5,strcat(num2str(data(5,i)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(ldata6(i),6,strcat(num2str(data(6,i)),"%"));
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
y2(i)=strcat(num2str("0%"));
else
y2(i)=strcat(num2str(yl(i)),"%");
endif
endfor
set(gca,'xtick',yl,'xticklabel',y2);
x1=1:1:6;
x2={{"U.S"},{"Arizona"},{"Georgia"}, ...
{"Massachusetts"},{"Minnesota"},{"San Francisco"}};
set(gca,'ytick',x1,'yticklabel',x2);
title({"Percent of Housing Units by Year Built"}, ...
'fontsize',fs,'fontweight','bold');
xlabel("Percent")
ylabel("State")
%set(gca,'xtick',[1 2],'xticklabel',[1965 1950])
set(gca,'fontsize',fs2,'fontweight','bold');
axis([0 100 0 7])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"