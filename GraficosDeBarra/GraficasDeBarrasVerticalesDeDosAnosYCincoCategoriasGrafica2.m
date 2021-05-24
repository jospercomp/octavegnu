clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
%%%%%%%%%%%%%%%%%%%%%%%%%
#npreguntas=2;
#nescala=5;
#data=round(100*rand(nescala,npreguntas))
data=[32 51; 47 58; 77 72];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra 
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Percentage of Voting Republican During ', ...
' Presidential Elections'));
hb= bar(data);
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
%etiqueta de la legenda
acell={'1948','1952'};
hl=legend(acell);
legend(hl,"location","northeastoutside");
set(hl,"fontsize", 30);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlabel('Collar Workers','fontsize',fs2,'fontweight','bold');
ylabel('Percentage','fontsize',fs2,'fontweight','bold');
title({'GRAPH II', ....
'Percentage of Educational Groups Voting Republican During', ...
'Presidential Elections'}, ...
'fontsize',0.25*fs,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'YTick',0:10:80)
set(gca,'XTick',1:1:4)
lescala={'Elemantary School Graduates', ...
'Secondary School Graduates','College Graduates',''};
set(gca,'XTickLabel',lescala,'fontsize',fs4,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:10:80;
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
"ygrid","on","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:5
ht=text(i-0.20,data(i,1)+0.7,strcat(num2str(data(i,1)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
ht=text(i+0.20,data(i,2)+0.7,strcat(num2str(data(i,2)),"%"));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%box off;
%verticalalignment:"baseline","bottom","cap","middle","top"
%horizontalalignment: "center","left","right"
