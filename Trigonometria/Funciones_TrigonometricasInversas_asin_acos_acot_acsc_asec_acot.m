clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Funciones Trigonométricas Inversas', ...
' - Dominio & Rango'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=15; fs2=18;
gav=0.3; vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
x = linspace(-1,1,1000);
y=asin(x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2 2 -2*pi 2*pi])
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('f(x)=sin^{-1}(x)=asin(x)','fontsize',fs,'fontweight','bold')
xlabel('Dominio: [-1,1]','fontsize',fs,'fontweight','bold')
ylabel('Rango: [-^{\pi}/_{2},^{\pi}/_{2}] ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
x = linspace(-1,1,1000);
y=acos(x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2 2 -2*pi 2*pi])
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('f(x)=cos^{-1}(x)=acos(x)','fontsize',fs,'fontweight','bold')
xlabel('Dominio: [-1,1]','fontsize',fs,'fontweight','bold')
ylabel('Rango: [0,\pi] ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
x = linspace(-2*pi,2*pi,1000);
y=atan(x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2*pi 2*pi -pi/2 pi/2])
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('f(x)=tan^{-1}(x)=atan(x)','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs,'fontweight','bold')
ylabel('Rango: (-^{\pi}/_{2},^{\pi}/_{2}) ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
x = linspace(-2*pi,2*pi,10000);
%y=acsc(x);
y=asin(1./x);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2*pi 2*pi -pi/2 pi/2])
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('f(x)=csc^{-1}(x)=acsc(x)','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,-1]\cup[1,\infty]','fontsize',fs,'fontweight','bold')
ylabel('Rango:[-{\pi}/_{2},0)\cup(0,^{\pi}/_{2}] ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
x = linspace(-2*pi,2*pi,10000);
%y=asec(x);
y=acos(1./x);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2*pi 2*pi -pi pi])
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('f(x)=sec^{-1}(x)=asec(x)','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,-1]\cup[1,\infty]','fontsize',fs,'fontweight','bold')
ylabel('Rango:[0,{\pi}/_{2})\cup(^{\pi}/_{2},\pi] ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
x = linspace(-2*pi,2*pi,1000);
%y=acot(x);
y=pi/2-atan(x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2*pi 2*pi -pi pi])
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
title('f(x)=cot^{-1}(x)=acot(x)','fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs,'fontweight','bold')
ylabel('Rango: (0,\pi) ','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%