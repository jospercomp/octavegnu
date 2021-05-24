clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Identidades Trigonométricas Inversas', ...
' - Expresión Trigonométrica como Expresión Algebraica'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=15; fs2=18;
gav=0.3; vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
x = linspace(-1,1,1000);
y=sqrt(1-x.^2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2 2 -2 2])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'cos(sin^{-1}x)=sqrt(1-x^2)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('Dominio: [-1,1]','fontsize',fs2,'fontweight','bold')
ylabel('Rango: [0,1]','fontsize',fs2,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
x = linspace(-10,10,1000);
y=1./sqrt(1+x.^2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-4 4 -4 4])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'cos(tan^{-1}x)=^1/_{sqrt(1+x^2)}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs2,'fontweight','bold')
ylabel('Rango: (0,1]','fontsize',fs2,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
x = linspace(-1,1,1000);
y=sqrt(1-x.^2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2 2 -2 2])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'sin(cos^{-1}x)=sqrt(1-x^2)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('Dominio: [-1,1]','fontsize',fs2,'fontweight','bold')
ylabel('Rango: [0,1]','fontsize',fs2,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
x = linspace(-10,10,1000);
y=x./sqrt(1+x.^2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-4 4 -4 4])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'sin(tan^{-1}x)=^x/_{sqrt(1+x^2)}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-\infty,\infty)','fontsize',fs2,'fontweight','bold')
ylabel('Rango: (-1,1)','fontsize',fs2,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
x = linspace(-1,1,5000);
y=sqrt(1-x.^2)./x;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2 2 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'tan(cos^{-1}x)=^{sqrt(1-x^2)}/_{x}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('Dominio: [-1,0) \cup (0,1]','fontsize',fs2,'fontweight','bold')
ylabel('Rango: (-\infty,\infty)','fontsize',fs2,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
x = linspace(-1,1,5000);
y=x./sqrt(1-x.^2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-2 2 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'tan(sin^{-1}x)=^x/_{sqrt(1-x^2)}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('Dominio: (-1,1)','fontsize',fs2,'fontweight','bold')
ylabel('Rango: (-\infty,\infty)','fontsize',fs2,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%