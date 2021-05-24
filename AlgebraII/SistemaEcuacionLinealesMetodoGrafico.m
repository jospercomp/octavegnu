clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Sistema de Ecuaciones Lineales en forma de Ecuación Pendiente-Intercepto - Método Gráfico');
lw=3; ms=40; fs=20;
vc1=[0 0 1];
vc2=[1 0 0];
vc3=[0 0 0];
x = linspace(-10,10,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
y1 = -5*x/3+3;
y2 = x/3-3;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([1.8 0],[0 3],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([9 0],[0 -3],'.','markersize',ms,'color',vc2);
plot(3,-2,'.','markersize',ms,'color',vc3);
hold off
title('y1=-5x/3+3; y2=x/3-3',...
'fontsize',fs)
xlabel('\{x=3,y=-2\}','fontsize',fs,'fontweight','bold')
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
y1 = 4*x+3;
y2 = -x-2;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([-0.75 0],[0 3],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([-2 0],[0 -2],'.','markersize',ms,'color',vc2);
plot(-1,-1,'.','markersize',ms,'color',vc3);
hold off
title('y1=4x+3; y2=-x-2',...
'fontsize',fs)
xlabel('\{x=-1,y=-1\}','fontsize',fs,'fontweight','bold')
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
y1 = 3*x-4;
y2 = -x/2+3;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([4/3 0],[0 -4],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([6 0],[0 3],'.','markersize',ms,'color',vc2);
plot(2,2,'.','markersize',ms,'color',vc3);
hold off
title('y1=3x-4; y2=-x/2+3',...
'fontsize',fs)
xlabel('\{x=2,y=2\}','fontsize',fs,'fontweight','bold')
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
y1=-x/2-1;
y2=x/4-4;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([-2 0],[0 -1],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([16 0],[0 -4],'.','markersize',ms,'color',vc2);
plot(4,-3,'.','markersize',ms,'color',vc3);
hold off
title('y1=-x/2-1; y2=x/4-4',...
'fontsize',fs)
xlabel('\{x=4,y=-3\}','fontsize',fs,'fontweight','bold')
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
y1=0*x-1;
y2=-5*x/2+4;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot(0,-1,'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([1.6 0],[0 4],'.','markersize',ms,'color',vc2);
plot(2,-1,'.','markersize',ms,'color',vc3);
hold off
title('y1=0x-1; y2=-5x/2+4',...
'fontsize',fs)
xlabel('\{x=2,y=-1\}','fontsize',fs,'fontweight','bold')
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
y1=-x/2-2;
y2=-3*x/2+2;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([-4 0],[0 -2],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([4/3 0],[0 2],'.','markersize',ms,'color',vc2);
plot(4,-4,'.','markersize',ms,'color',vc3);
hold off
title('y1=-x/2-2; y2=-3x/2+2;',...
'fontsize',fs)
xlabel('\{x=4,y=-4\}','fontsize',fs,'fontweight','bold')
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