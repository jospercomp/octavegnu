clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Funciones NO Polinomiales', ...
' - Casos'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=15; fs2=18;
gav=0.3; vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,1)
x = linspace(-10,10,1000);
y=sqrt(abs(x));
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=\surd|x|=sqrt(abs(x))'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,5)
x = linspace(-10,10,1000);
y=(x.^(2)).^(1/3);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=x^{2/3}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,2)
x = linspace(-10,10,1000);
y=abs(x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=|x|=abs(x)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,6)
x = linspace(-6,6,5000);
y=2*abs(x)./x;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{|x|}/_x=^x/_{|x|}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,3)
x = linspace(-6,6,5000);
y=1./x;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=x^{-1}=^1/_{x}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,7)
x = linspace(-6,6,5000);
y=1./x.^2;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=x^{-2}=^1/_{x^2}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,4)
x = linspace(-6,6,1000);
y=2.^x;
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=2^{x}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,8)
x = linspace(-6,6,1000);
y=exp(x);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=e^x=exp(x)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%