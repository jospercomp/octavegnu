clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Sistema de Ecuaciones Lineales en forma de Ecuación General- Método Gráfico');
lw=3; ms=40; fs=16;
vc1=[0 0 1];
vc2=[1 0 0];
vc3=[0 0 0];
x = linspace(-10,10,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,3,1)
y1 = 2*x+2;
y2 = 2*x/3-2;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([-1 0],[0 2],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([3 0],[0 -2],'.','markersize',ms,'color',vc2);
plot(-3,-4,'.','markersize',ms,'color',vc3);
hold off
title({'y-2x=2','2x=3y+6'},...
'fontsize',fs)
xlabel('\{x=-3,y=-4\}','fontsize',fs,'fontweight','bold')
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
y1 = 7*x-2;
y2 =2*x/3+13/3;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([2/7 0],[0 -2],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([-13/2 0],[0 13/3],'.','markersize',ms,'color',vc2);
plot(1,5,'.','markersize',ms,'color',vc3);
hold off
title({'7x-y=2','3y-2x=13'},...
'fontsize',fs)
xlabel('\{x=1,y=5\}','fontsize',fs,'fontweight','bold')
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
y1 = -0.125*x+1.25;
y2 = -0.5*x-1;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([10 0],[0 1.25],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([-2 0],[0 -1],'.','markersize',ms,'color',vc2);
plot(-6,2,'.','markersize',ms,'color',vc3);
hold off
title({'8y+x=10','5x+10y=-10'},...
'fontsize',fs)
xlabel('\{x=-6,y=2\}','fontsize',fs,'fontweight','bold')
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
y1=x+1;
y2=0.75*x+3.25;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([-1 0],[0 1],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([-4.3333 0],[0 3.25],'.','markersize',ms,'color',vc2);
plot(9,10,'.','markersize',ms,'color',vc3);
hold off
title({'5y-5x=5','4y-3x=13'},...
'fontsize',fs)
xlabel('\{x=9,y=10\}','fontsize',fs,'fontweight','bold')
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
y1=-0.3333*x+2.3333;
y2=0.4286*x+8.4286;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([7 0],[0 2.3333],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([-19.6667 0],[0 8.4286],'.','markersize',ms,'color',vc2);
plot(-8,5,'.','markersize',ms,'color',vc3);
hold off
title({'2x+6y=14','7y-3x=59'},...
'fontsize',fs)
xlabel('\{x=-8,y=5\}','fontsize',fs,'fontweight','bold')
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
y1=-0.3333*x+1.6667;
y2=2.3333*x-19.6667;
hold on;
plot(x,y1,'linewidth',lw,'color',vc1);
plot([5 0],[0 1.6667],'.','markersize',ms,'color',vc1);
plot(x,y2,'linewidth',lw,'color',vc2);
plot([8.4286 0],[0 -19.6667],'.','markersize',ms,'color',vc2);
plot(8,-1,'.','markersize',ms,'color',vc3);
hold off
title({'-3x-9y=-15','7x-3y=59'},...
'fontsize',fs)
xlabel('\{x=8,y=-1\}','fontsize',fs,'fontweight','bold')
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