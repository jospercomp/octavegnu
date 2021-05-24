clear all; close all; clc;
fs=24; fs2=22;
fs3=14; fs4=18;
lw=3; ms=14;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
h=figure('Position',[1 21 1366 670], ...
'Name',strcat(' Gráfico de Barras Apiladas Verticalmente & Gráfico de Líneas', ...
' - Team Revenues for 2009'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
subplot(1,2,1)
data=[50 75 55;30 30 40;40 20 20;10 10 10];
hb=bar(data,"stacked");
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
%etiqueta de la legenda
acell={'Venue revenue','Media revenue','Other revenue'};
hl=legend(acell);
legend(hl,"location","southoutside");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
data1cs=cumsum(data(1,:));
data2cs=cumsum(data(2,:));
data3cs=cumsum(data(3,:));
data4cs=cumsum(data(4,:));
for i=1:size(data,2)
if i==1
ldata1=data(1,i)/2;
ldata2=data(2,i)/2;
ldata3=data(3,i)/2;
ldata4=data(4,i)/2;
else
ldata1=[ldata1 (data1cs(i-1)+(data(1,i))/2)];
ldata2=[ldata2 (data2cs(i-1)+(data(2,i))/2)];
ldata3=[ldata3 (data3cs(i-1)+(data(3,i))/2)];
ldata4=[ldata4 (data4cs(i-1)+(data(4,i))/2)];
endif 
endfor
%%%%%%%%%%%%%%%%%%%%%%%
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
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:20:180;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str("0"));
else
y2(i)=strcat(num2str(yl(i)),"");
endif
endfor
set(gca,'ytick',yl,'yticklabel',y2);
x1=1:1:4;
x2={{"Team A"},{"Team B"},{"Team C"},{"Team D"}};
set(gca,'xtick',x1,'xticklabel',x2);
set(gca,"xminortick","off","xgrid","off", ... 
"ygrid","on","gridalpha",1,'gridcolor',[0 0 0]);
title({"Team Revenue for 2009"}, ...
'fontsize',fs,'fontweight','bold');
xlabel("Teams")
ylabel("Revenue (millions of dollars)")
%set(gca,'xtick',[1 2],'xticklabel',[1965 1950])
set(gca,'fontsize',fs2,'fontweight','bold');
axis([0 5 0 180])
ax4=get(gca,'position');
set(gca,"position", [ax4(1), ax4(2)+0.06, ax4(3), ax4(4)-0.01]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
D=1:1:6;
G=[1 12 10 7.5 14 5; 
   8 16 18 17 12 4;
   3 5 9 8.5 5 4]; 
G=transpose(G);
mf={'*','s','d'};
hold on;
hpL=plot(G);
for i=1:size(G,2)
set(hpL(i),'linewidth',lw,"color",Mcolor(i,:), ...
    'marker',char(mf(i)),'markersize',ms)
endfor
hold off;
title({"Team A Revenues for 2009",""}, ...
'fontsize',30,'fontweight','bold')
xlabel("Month",'fontsize',14,"fontweight",'bold')
ylabel("Revenues (millions of dollars)",'fontsize',14,"fontweight",'bold')
set(gca,'XTick',D)
set(gca,'YTick',0:2:20)
LM={'Jan','Feb','Mar','Apr','May','Jun'};
set(gca,'xtick',D,'xticklabel',LM);
axis([0 7 0 20])
set(gca,"fontsize",fs4,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","off","gridalpha",1,'gridcolor',[0 0 0]);
for j=1:size(G,2)
for i=1:length(D) 
  text(D(i)+0.3,G(i,j)+0.5,num2str(G(i,j)), ...
  'fontsize',14,"fontweight",'bold')
endfor
endfor
%etiqueta de la legenda
acell={'Venue revenue','Media revenue','Other revenue'};
hl=legend(acell);
legend(hl,"location","southoutside");
set(hl,"fontsize", 30);