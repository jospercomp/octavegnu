clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
#data=round(100*rand(nescala,npreguntas))
data=[-10.3; 2.5; -5.8; -6.1;-1.6;-3.1;0.5;-3];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra
h=figure('Position',[1 21 1366 670], ...
'Name',"Gráfico de Barra Vertical Colorido Repaid and Borrowed");
%Grafico de Barra para multiples colores
hb= bar(1:length(data),diag(data),"stacked");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=length(data);
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
for i=1:length(data)
set(hb(i),"facecolor",Mcolor(i,:))
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
title({"FEDERAL BUDGET","(Billons of dollars)"},'fontsize',fs);
xlabel('YEARS','fontsize',fs2,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
box on;
set(gca,'XTick',[1:1:8])
set(gca,'YTick',-12:3:3)
axis([0 9 -12 3])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=-12:3:3;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat(num2str("0"));
else
y2(i)=strcat(num2str(abs(yl(i))),"");
endif
endfor
Ly=1959:1:1966;
%y2=abs(-12:3:3);
set(gca,'yticklabel',y2,'xticklabel',Ly);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"yminortick","off","ygrid","on", ...
"xgrid","on","gridalpha",1,'gridcolor',[0 0 0]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.68 0.14 0.1 0.1], "string", ...
             {'Treasury Agency Cash', ...
             'Borrowings; Federal', ...
             'Reserve Purchases Excluded'}, ...
             "fontsize", fs3, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "backgroundcolor",[1 1 1],...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
ha2=annotation ("textbox", [0.7 0.81 0.1 0.1], "string", ...
             {'Repaid'}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "backgroundcolor",[1 1 1],...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
ha3=annotation ("textbox", [0.695 0.5 0.1 0.1], "string", ...
             {'Borrowed'}, ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "on", "verticalalignment", "top", ...
             "backgroundcolor",[1 1 1],...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);