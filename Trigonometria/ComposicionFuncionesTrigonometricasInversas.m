clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Composición de Funciones Trigonométricas Inversas', ...
' en Funciones Trigonométricas - Error y Ajuste'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=15; fs2=18; fs3=16;
gav=0.3; vc=[0 0 0];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,1)
x = linspace(-6,6,1000);
y=sqrt(x.^2-1)./x;
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{sqrt(x^2-1)}/_{x}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
ylabel('',....
'fontsize',fs,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,5)
x = linspace(-6,6,1000);
y=sqrt(x.^2-1)./abs(x);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{sqrt(x^2-1)}/_{|x|}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel({'f(x)=sin(sec^{-1}(x))','f(x)=cos(csc^{-1}(x))'},...
'fontsize',fs3,'fontweight','bold')
ylabel('',....
'fontsize',fs3,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,2)
x = linspace(-6,6,10^5);
y=sqrt(x.^2-1)./(x.^2-1);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{sqrt(x^2-1)}/_{x^2-1}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
ylabel('',....
'fontsize',fs,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,6)
x = linspace(-6,6,10^5);
y=(abs(x)./x).*sqrt(x.^2-1)./(x.^2-1);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{|x|}/_{x}*^{sqrt(x^2-1)}/_{x^2-1}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel({'f(x)=tan(csc^{-1}(x))','f(x)=cot(sec^{-1}(x))'},...
'fontsize',fs3,'fontweight','bold')
ylabel('',....
'fontsize',fs3,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,3)
x = linspace(-6,6,10^5);
y=x.*sqrt(x.^2-1)./(x.^2-1);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{x*sqrt(x^2-1)}/_{x^2-1}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
ylabel('',....
'fontsize',fs,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,7)
x = linspace(-6,6,10^5);
y=abs(x).*sqrt(x.^2-1)./(x.^2-1);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{|x|sqrt(x^2-1)}/_{x^2-1}'}, ...
'fontsize',fs,'fontweight','bold')
xlabel({'f(x)=csc(sec^{-1}(x))','f(x)=sec(csc^{-1}(x))'},...
'fontsize',fs3,'fontweight','bold')
ylabel('',....
'fontsize',fs3,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,4)
x = linspace(-6,6,10^5);
y=sqrt(x.^2-1);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=sqrt(x^2-1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
ylabel('',....
'fontsize',fs,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,8)
x = linspace(-6,6,10^5);
y=(abs(x)./x).*sqrt(x.^2-1);
x=x(imag(y)==0);
y=y(imag(y)==0);
plot(x,y,'.','markersize',ms,'color',vc);
axis([-6 6 -6 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'f(x)=^{|x|}/_{x}*sqrt(x^2-1)'}, ...
'fontsize',fs,'fontweight','bold')
xlabel({'f(x)=tan(sec^{-1}(x))','f(x)=cot(csc^{-1}(x))'},...
'fontsize',fs3,'fontweight','bold')
ylabel('',....
'fontsize',fs3,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%