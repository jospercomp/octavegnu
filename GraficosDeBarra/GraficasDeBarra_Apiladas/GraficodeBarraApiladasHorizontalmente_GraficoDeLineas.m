%Grafico de Barra Apiladas Verticalmente
%Stacked Bar Graph Vertically
clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=3; ms=10;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico de Barra Apiladas Horizontalmente',...
' & Gráfico de Líneas'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
subplot(1,2,1)
data=[75 115;25 150;100 125];
hb=barh(data,"stacked");
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
acell={'2000','2010'};
hl=legend(acell);
legend(hl,"location","eastoutside");
set(hl,"fontsize", 40);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
data1cs=cumsum(data(1,:));
data2cs=cumsum(data(2,:));
data3cs=cumsum(data(3,:));
for i=1:size(data,2)
if i==1
ldata1=data(1,i)/2;
ldata2=data(2,i)/2;
ldata3=data(3,i)/2;
else
ldata1=[ldata1 (data1cs(i-1)+(data(1,i))/2)];
ldata2=[ldata2 (data2cs(i-1)+(data(2,i))/2)];
ldata3=[ldata3 (data3cs(i-1)+(data(3,i))/2)];
endif 
endfor
%%%%%%%%%%%%%%%%%%%%%%%
for i=1:size(data,2)
ht=text(ldata1(i),1,strcat(num2str(data(1,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(ldata2(i),2,strcat(num2str(data(2,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(ldata3(i),3,strcat(num2str(data(3,i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:50:250;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str("0"));
else
y2(i)=strcat(num2str(yl(i)),"");
endif
endfor
set(gca,'xtick',yl,'xticklabel',y2);
x1=1:1:3;
x2={{"FastJet\nAirlines"},{"SuperBlue"},{"Omega\nAirlines"}};
set(gca,'ytick',x1,'yticklabel',x2);
set(gca,"xminortick","off","xgrid","on", ... 
"ygrid","off","gridalpha",1,'gridcolor',[0 0 0]);
title({"Number of Planes at Airport"}, ...
'fontsize',fs,'fontweight','bold');
xlabel("Number of planes")
ylabel("Airlines")
%set(gca,'xtick',[1 2],'xticklabel',[1965 1950])
set(gca,'fontsize',fs2,'fontweight','bold');
axis([0 250 0 4])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"
subplot(1,2,2)
D=1990:4:2010;
G=[12 15 22 18 30 50]; 
plot(D,G,'linewidth',lw,D,G,'s','markersize',ms)
title({"Collisions between Birds and Planes",...
       "near Airport"})
xlabel("Year")
ylabel("Number of Collisions")
set(gca,'XTick',D)
set(gca,'YTick',0:5:55)
axis([1988 2012 0 55])
%set(gca,'xticklabel',1:1:14,'yticklabel',60:2:80);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","off","gridalpha",1,'gridcolor',[0 0 0]);
for i=1:length(D) 
  text(D(i)-1,G(i)+3,num2str(G(i)), ...
  'fontsize',18,"fontweight",'bold')
endfor