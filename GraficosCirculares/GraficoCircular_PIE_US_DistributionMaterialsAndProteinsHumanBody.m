clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráfico Circular',...
 ' - DISTRIBUTION OF PROTEINS IN THE HUMAN BODY'));
subplot(1,2,1)
data1=[0.15,0.15,0.70];
hp1=pie(data1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=length(data1);
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
axis([-2,2,-2,2]);
title({"DISTRIBUTION OF MATERIALS", ... 
       "IN THE HUMAN BODY"},...
       'fontsize',fs);
data1=[0.15,0.15,0.70];
vstring={{{"protein","15%"}}, ...
         {"other dry","material","15%"}, ...
         {{"water","70%"}}};
for i=2:2:size(hp1,1)
set(hp1(i),'string',cellstr(vstring(i/2)))
set(hp1(i),'fontsize',15,'fontweight','bold');
set(hp1(i-1),'facecolor',Mcolor(i/2,:));
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
data2=[11/30,1/5,1/10,1/3];
hp2=pie(data2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
ncolor=length(data2);
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
axis([-2,2,-2,2]);
title({"DISTRIBUTION OF PROTEINS", ... 
       "IN THE HUMAN BODY"},...
       'fontsize',fs);
vstring={{"hormones,","enzymes,","antibodies,", ...
          "and other","proteins"}, ...
          strcat("^1/_{10}"," bones"), ...
          strcat("^1/_5"," skin"),...
          strcat("^1/_3 ","  muscles")};
for i=2:2:size(hp2,1)
set(hp2(i),'string',cellstr(vstring(i/2)))
set(hp2(i),'fontsize',15,'fontweight','bold');
set(hp2(i-1),'facecolor',Mcolor(i/2,:));
endfor
