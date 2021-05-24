clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Polinomios C�bicos', ...
' - Casos'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=15; fs2=18;
gav=0.3; vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
x = linspace(-10,10,1000);
y=(x+1).*(x+4).*(x-2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -20 20])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=(x+1)(x+4)(x-2)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=x^3+3x^2-6x-8','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow+\infty', ...
'x\rightarrow-\infty,y\rightarrow-\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
x = linspace(-10,10,1000);
y=-(x+1).*(x+4).*(x-2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -20 20])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=-(x+1)(x+4)(x-2)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=-x^3-3x^2+6x+8','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow-\infty', ...
'x\rightarrow-\infty,y\rightarrow+\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
x = linspace(-10,10,5000);
y=(x+3).^2.*(x-1);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=(x+3)^2(x-1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=x^3+5x^2+3x-9','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow+\infty', ...
'x\rightarrow-\infty,y\rightarrow-\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
x = linspace(-10,10,5000);
y=-(x+3).^2.*(x-1);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=-(x+3)^2(x-1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=-x^3-5x^2-3x+9','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow-\infty', ...
'x\rightarrow-\infty,y\rightarrow+\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
x = linspace(-10,10,1000);
y=(x-2).^3;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-5 5 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=(x-2)^3'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=x^3-6x^2+12x-8','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow+\infty', ...
'x\rightarrow-\infty,y\rightarrow-\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
x = linspace(-10,10,1000);
y=-(x-2).^3;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-5 5 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=-(x-2)^3'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=-x^3+6x^2-12x+8','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow-\infty', ...
'x\rightarrow-\infty,y\rightarrow+\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%