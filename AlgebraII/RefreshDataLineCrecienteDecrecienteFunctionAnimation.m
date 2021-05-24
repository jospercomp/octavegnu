clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','refreshdata Command Demonstrations');
m=1;
b=1;
error=1;
xi=0;
xf=10;
x=linspace(xi,xf,100);
lw=5;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,1)
y=m*x+b;
y2=y;
ye=m*x+b+(2*error*rand(1,length(x))-error);
ye2=ye;
hold on;
plot(x,y,'linewidth',lw,"ydatasource","y")
plot(x,ye,'.','markersize',20,"ydatasource","ye")
title("refreshdata() showing moving increase lineal model",... 
 'fontsize',20);
xlabel('x','fontweight','bold','fontsize',20)
ylabel('f(x)','fontweight','bold','fontsize',20)
hold off;
grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m=-1;
b=1;
subplot(1,2,2)
y3=m*x+b+xf;
y4=y3;
ye5=m*x+b+xf+(2*error*rand(1,length(x))-error);
ye6=ye5;
hold on;
plot(x,y,'linewidth',lw,"ydatasource","y3")
plot(x,ye,'.','markersize',20,"ydatasource","ye5")
title("refreshdata() showing moving decrease lineal model",... 
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