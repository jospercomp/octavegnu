%xaxislocation & yaxislocation charts 
%and reverse both x and y axis in Octave
close all; clear all; clc;
figure("name",upper('Two Horizontal Bars Back to Back Chart'), ...
 "position",[1 21 1366 670])
fs=20; fs3=18; fs2=25;
%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.832 0.99], "string", ...
             {'Home Videos'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
ha1=annotation ("textbox", [0.1 0 0.83 0.93], "string", ...
             {'Year'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);             
%%%%%%%%%%%%%%%%%
subplot(1,2,1)
data=[2.55 6.63 7.46 9.18 8.20];
hb= barh(1:length(data),diag(data),"stacked");
xlabel('Dollars (in billons)',...
 'fontsize',fs,'fontweight','bold')
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca,'YTick',1:1:length(data))
set(gca,'XTick',0:1:12)
axis([0 12 0 length(data)+1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:2:18;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat("",num2str("0"),"");
else
y2(i)=strcat("",num2str(yl(i)),"");
endif
endfor
Ly={};
set(gca,'xticklabel',y2,'yticklabel',Ly);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"xminortick","off","xgrid","on", ... 
"ygrid","off","gridalpha",0,'gridcolor',[0 0 0]);
set(gca,"xaxislocation","bottom");
set(gca,"yaxislocation","right");
title("Rental Revenue",'fontsize',fs);
set(gca(),"xdir","reverse")
box off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:length(data)
ht=text(data(i)+1,i-0.10,strcat("$",num2str(data(i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%set(gca(),"ydir","reverse")
%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
data=[0.86 3.18 8.24 9.76 14.30];
hb= barh(1:length(data),diag(data),"stacked");
xlabel('Dollars (billons)',...
 'fontsize',fs,'fontweight','bold')
for i=1:length(data)
set(hb(i),"facecolor",Mcolor(i,:))
endfor
set(gca,"xaxislocation","bottom");
set(gca,"yaxislocation","left");
title("Sales Revenue",'fontsize',fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca,'YTick',1:1:length(data))
set(gca,'XTick',0:1:16)
axis([0 16 0 length(data)+1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:2:18;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat("",num2str("0"),"");
else
y2(i)=strcat("",num2str(yl(i)),"");
endif
endfor
Ly={};
set(gca,'xticklabel',y2,'yticklabel',Ly);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"xminortick","off","xgrid","on", ... 
"ygrid","off","gridalpha",0,'gridcolor',[0 0 0]);
box off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:length(data)
ht=text(data(i)+1.25,i-0.10,strcat("$",num2str(data(i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
TexC=flip({'1985','1990','1997','2000','2003'});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:length(data)
ha1=annotation ("textbox", [0.1 0 0.83 0.8-(i-1)*0.135], "string", ...
             cellstr(TexC(:,i)), ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
endfor