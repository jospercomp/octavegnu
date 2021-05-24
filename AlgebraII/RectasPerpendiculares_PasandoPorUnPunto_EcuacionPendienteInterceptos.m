clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Rectas Perpendiculares');
lw=3; ms=40; fs=16;
vc1=[0 0 1];
vc2=[1 0 0];
vc3=[0 0 0];
x = linspace(-10,10,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
y1 = x/8+2;
y2 = -8*x+3;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(1,-5,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=x/8+2; P(1,-5); yR(x)=-8x+3',...
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
y1 = 5*x/9-4;
y2 = -9*x/5-4;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(-5,5,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=5x/9-4; P(-5,5); yR(x)=-9x/5-4',...
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
y1 = 5*x+4;
y2 = -1*x/5-7/5;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(3,-2,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=5x+4; P(3,-2); yR(x)=-x/5-7/5',...
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
y1 = x+2;
y2 = -1*x+3;
hold on;
plot(y1,x,'linewidth',lw,'color',vc1);
plot(y2,x,'linewidth',lw,'color',vc2);
plot(4,-1,'.','markersize',ms,'color',vc3);
hold off
title('xA=x+2; P(4,-1); xR=-x+3',...
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
y1 = -2*x-4;
y2 = x/2+(5/2);
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(3,4,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=-2x-4; P(3,4); yR(x)=x/2+5/2',...
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
y1 = -2*x/3+4;
y2 = 3*x/2-(7/2);
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot(3,1,'.','markersize',ms,'color',vc3);
hold off
title('yA(x)=-2x/3+4; P(3,1); yR(x)=3x/2-7/2',...
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