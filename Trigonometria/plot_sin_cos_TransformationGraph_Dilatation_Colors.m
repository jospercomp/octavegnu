clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Dilataciones de la Función Trigonométrica SENO', ...
''));
lw=3; fs=18; ms=0.5;
ncolor=64;
opc=18;
x = linspace(0,2*pi,10000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y = abs(sin(x));
hold on;
plot(x,y,'.','markersize',ms,'color',[0 0 0]);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('A*sin(x)','fontsize',fs)
axis([0 2*pi -65 65])
set(gca,'YTick',-65:5:65)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%set(gca,'xTick',0:pi/2:2*pi)
%set(gca,'xTick',0:pi/4:2*pi)
set(gca,'xTick',0:pi/8:2*pi)
%{'-2','-1','0','1', '2'}
%set(gca,'fontsize',fs,'xTickLabel', ...
%{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%set(gca,'fontsize',fs,'xTickLabel', ...
%{'','\pi_{/4}','\pi_{/2}','3\pi_{/4}','\pi', ...
%'5\pi_{/4}','3\pi_{/2}','7\pi_{/4}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/8}','\pi_{/4}','3\pi_{/8}','\pi_{/2}', ...
'5\pi_{/8}','3\pi_{/4}','7\pi_{/8}','\pi', ...
'9\pi_{/8}','5\pi_{/4}','11\pi_{/8}','3\pi_{/2}', ...
'13\pi_{/8}','7\pi_{/4}','15\pi_{/4}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
for i=1:size(Mcolor,1)
y =i*abs(sin(x));
plot(x,y,'.','markersize',ms,'color',Mcolor(i,:));  
endfor
hold off;
LTcolor={'jet','cubehelix','hsv','rainbow','hot', ...	
'cool','spring','summer','autumn','winter','gray',...
'bone','copper','pink','ocean','flag','lines','prism'};
if mod(opc,18) !=0
xlabel(strcat(toupper(LTcolor(mod(opc,18)))," COLOR"), ...
'fontweight','bold','fontsize',24);
else
xlabel(strcat(toupper(LTcolor(18))," COLOR"), ...
'fontweight','bold','fontsize',24);
endif