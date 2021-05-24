clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','refreshdata Command Demonstrations');
m=-1;
b=12;
error=1;
xi=0;
xf=10;
x=linspace(xi,xf,100);
y=m*x+b;
y2=y;
ye=m*x+b+(2*error*rand(1,length(x))-error);
ye2=ye;
hold on;
plot(x,y,"ydatasource","y")
plot(x,ye,'.','markersize',20,"ydatasource","ye")
hold off;
grid on;
axis manual;
n=length(x);
for k=1:1
i=1;
while i <= n
pause(0.1);
##if(i<=n)
y=y2(1:i);
ye=ye2(1:i);
##else
##y=sin(x+0.1*(i-n));
##ye=cos(x+0.1*(i-n));
##endif
refreshdata(gcf,"caller");
i=i+1;
endwhile
endfor