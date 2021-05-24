clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Rectas Paralelas');
lw=3; ms=40; fs=16;
vc1=[0 0 1];
vc2=[1 0 0];
vc3=[0 0 0];
x = linspace(-10,10,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
y1 = x+4;
y2 = x;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(2,2,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=x+4; P(2,2); yR(x)=x',...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -10 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
if x1(i)==0
x2(i)=strcat(num2str(""));
else
x2(i)=strcat(num2str(x1(i)));
endif
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,2)
y1 = 3*x+2;
y2 = 3*x-10;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(2,-4,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=3x+2; P(2,-4); yR(x)=3x-10',...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -10 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
if x1(i)==0
x2(i)=strcat(num2str(""));
else
x2(i)=strcat(num2str(x1(i)));
endif
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,3)
y1 = -6*x+5;
y2 = -6*x+28;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(4,4,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=-6x+5; P(4,4); yR(x)=-6x+28',...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -10 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
if x1(i)==0
x2(i)=strcat(num2str(""));
else
x2(i)=strcat(num2str(x1(i)));
endif
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,4)
y1 = 0*x;
y2 = 0*x+4;
hold on;
plot(y1,x,'linewidth',lw,'color',vc1);
plot(y2,x,'linewidth',lw,'color',vc2);
plot(4,3,'.','markersize',ms,'color',vc3);
hold off
title('xA=0; P(4,3); xR=4',...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -10 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
if x1(i)==0
x2(i)=strcat(num2str(""));
else
x2(i)=strcat(num2str(x1(i)));
endif
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,5)
y1 = -2/5*x+3;
y2 = -0.4*x-0.2;
%4/10=2/5
%2/10=1/5
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(2,-1,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=-2x/5+3; P(2,-1); yR(x)=-2x/5-1/5',...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -10 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
if x1(i)==0
x2(i)=strcat(num2str(""));
else
x2(i)=strcat(num2str(x1(i)));
endif
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,6)
y1 = -3*x+3;
y2 = -3*x-10;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(-5,5,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=-3x+3; P(-5,5); yR(x)=-3x-10',...
      'fontsize',fs)
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
axis([-10 10 -10 10])
x1=-10:1:10;
x2={};
for i=1:length(x1)
if x1(i)==0
x2(i)=strcat(num2str(""));
else
x2(i)=strcat(num2str(x1(i)));
endif
endfor
set(gca,'ytick',-10:1:10,'yticklabel',x2);
set(gca,'xtick',-10:1:10,'xticklabel',x2);