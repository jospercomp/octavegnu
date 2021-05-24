clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Polinomios Cuárticos', ...
' - Casos'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=15; fs2=18;
gav=0.3; vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,1)
x = linspace(-10,10,5000);
y=(x-3).*(x-1).*(x+1).*(x+2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -20 20])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=(x-3)(x-1)(x+1)(x+2)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=x^4-x^3-7x^2+x+6','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow+\infty', ...
'x\rightarrow-\infty,y\rightarrow+\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,5)
x = linspace(-10,10,5000);
y=-(x-3).*(x-1).*(x+1).*(x+2);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -20 20])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=-(x-3)(x-1)(x+1)(x+2)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=-x^4+x^3+7x^2-x-6','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow-\infty', ...
'x\rightarrow-\infty,y\rightarrow-\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,2)
x = linspace(-10,10,5000);
y=(x-4).^2.*(x-1).*(x+1);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -20 20])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=(x-4)^2(x-1)(x+1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=x^4-8x^3+15x^2+8x-16','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow+\infty', ...
'x\rightarrow-\infty,y\rightarrow+\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,6)
x = linspace(-10,10,5000);
y=-(x-4).^2.*(x-1).*(x+1);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-10 10 -20 20])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=-(x-4)^2(x-1)(x+1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=-x^4+8x^3-15x^2-8x+16','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow-\infty', ...
'x\rightarrow-\infty,y\rightarrow-\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,3)
x = linspace(-10,10,5000);
y=(x+2).^3.*(x-1);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-5 5 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=(x+2)^3(x-1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=x^4+5x^3+6x^2-4x-8','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow+\infty', ...
'x\rightarrow-\infty,y\rightarrow+\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,7)
x = linspace(-10,10,5000);
y=-(x+2).^3.*(x-1);;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-5 5 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=-(x+2)^3(x-1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=-x^4-5x^3-6x^2+4x+8','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow-\infty', ...
'x\rightarrow-\infty,y\rightarrow-\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,4)
x = linspace(-10,10,5000);
y=(x-3).^4;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-5 5 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=(x-3)^4'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=x^4-12x^3+54x^2-108x+81','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow+\infty', ...
'x\rightarrow-\infty,y\rightarrow+\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,8)
x = linspace(-10,10,5000);
y=-(x-3).^4;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-5 5 -10 10])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=-(x-3)^4'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('f(x)=-x^4+12x^3-54x^2+108x-81','fontsize',fs,'fontweight','bold')
ylabel({'x\rightarrow+\infty,y\rightarrow-\infty', ...
'x\rightarrow-\infty,y\rightarrow-\infty'},....
'fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%