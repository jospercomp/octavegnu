%xaxislocation & yaxislocation charts 
%and reverse both x and y axis in Octave
close all; clear all; clc;
figure("name",upper('Two Horizontal Bars Back to Back Chart'), ...
 "position",[1 21 1366 670])
fs=20; fs3=18; fs2=30;
%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.85 0.99], "string", ...
             {'Median Weekly Earnings'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
%%%%%%%%%%%%%%%%%
subplot(1,2,1)
data=[320 451 520 767];
hb= barh(1:length(data),diag(data),"stacked");
xlabel('Dollars($)',...
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
set(gca,'XTick',0:200:1000)
axis([0 1000 0 length(data)+1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:200:1000;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat("$",num2str("0"),"");
else
y2(i)=strcat("$",num2str(yl(i)),"");
endif
endfor
Ly={};
set(gca,'xticklabel',y2,'yticklabel',Ly);
set(gca,"fontsize",fs3,"fontweight","bold")
set(gca,"xminortick","off","xgrid","on", ... 
"ygrid","off","gridalpha",0,'gridcolor',[0 0 0]);
set(gca,"xaxislocation","bottom");
set(gca,"yaxislocation","right");
title("1996",'fontsize',fs);
set(gca(),"xdir","reverse")
box off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data arriba de las barras
for i=1:length(data)
ht=text(data(i)+50,i-0.10,strcat("$",num2str(data(i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
%set(gca(),"ydir","reverse")
%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
data=[397 556 648 967];
hb= barh(1:length(data),diag(data),"stacked");
xlabel('Dollars ($)',...
 'fontsize',fs,'fontweight','bold')
for i=1:length(data)
set(hb(i),"facecolor",Mcolor(i,:))
endfor
set(gca,"xaxislocation","bottom");
set(gca,"yaxislocation","left");
title("2003",'fontsize',fs);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca,'YTick',1:1:length(data))
set(gca,'XTick',0:200:1000)
axis([0 1000 0 length(data)+1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% yticklabel
yl=0:200:1000;
y2={};
for i=1:length(yl)
if yl(i)==0
y2(i)=strcat("$",num2str("0"),"");
else
y2(i)=strcat("$",num2str(yl(i)),"");
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
ht=text(data(i)+50,i-0.10,strcat("$",num2str(data(i)),""));
set(ht,'fontsize',fs3,'fontweight','bold', ...
'verticalalignment','bottom', ...
'horizontalalignment','center')
endfor
TexC={{'Less than','4 Years of','High School'}, ...
{'High School','Diploma'}, ...
{'1 to 3 Years','of College'}, ...
{'College','Degree'}};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:length(data)
ha1=annotation ("textbox", [0.1 0 0.83 0.81-(i-1)*0.17], "string", ...
             cellstr(TexC(:,i)), ...
             "fontsize", fs, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
endfor