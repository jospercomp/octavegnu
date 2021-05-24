clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','refreshdata Command Demonstrations SIN and COS Data Animation');
b=5; %translacion vertical
A=3; %amplitud
error=0.5;
xi=0;
xf=2*pi;
x=linspace(xi,xf,100);
lw=5;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,1)
y=A*sin(x)+b;
y2=y;
ye=A*sin(x)+b+(2*error*rand(1,length(x))-error);
ye2=ye;
hold on;
plot(x,y,'linewidth',lw,"ydatasource","y")
plot(x,ye,'.','markersize',20,"ydatasource","ye")
title("refreshdata() showing moving SIN model",...
'fontsize',20);
xlabel('x','fontweight','bold','fontsize',20)
ylabel('f(x)','fontweight','bold','fontsize',20)
hold off;
grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,2)
y3=A*cos(x)+b;
y4=y3;
ye5=A*cos(x)+b+(2*error*rand(1,length(x))-error);
ye6=ye5;
hold on;
plot(x,y,'linewidth',lw,"ydatasource","y3")
plot(x,ye,'.','markersize',20,"ydatasource","ye5")
title("refreshdata() showing moving COS model",...
'fontsize',20);
xlabel('x','fontweight','bold','fontsize',20)
ylabel('f(x)','fontweight','bold','fontsize',20)
hold off;
grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=length(x);
for k=1:1
i=1;
while i <= n
pause(0.1);
y=y2(1:i);
ye=ye2(1:i);
y3=y4(1:i);
ye5=ye6(1:i);
refreshdata(gcf,"caller");
i=i+1;
endwhile
endfor