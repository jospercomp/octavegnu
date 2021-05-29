clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','refreshdata Command Demonstrations');
error=0.05;
xi=0;
angle=45;
g=32;
v=20;
xmax=(v^2/g)*sin(2*angle*pi/180);
hmax=(v^2/(2*g))*(sin(angle*pi/180))^2;
x=linspace(xi,ceil(xmax),100);
y=tan(angle*pi/180)*x-g/(2*v^2*cos(angle*pi/180)^2)*x.^2;
y2=y;
ye=abs(tan(angle*pi/180)*x-g/(2*v^2*cos(angle*pi/180)^2)*x.^2+(2*error*rand(1,length(x))-error));
ye2=ye;
hold on;
plot(x,y,"ydatasource","y")
plot(x,ye,'.','markersize',20,"ydatasource","ye")
axis([0 xmax 0 ceil(hmax)])
title({'Movimiento de Proyectil','Trayectoria Parabólica'}, ... 
'fontsize',20)
hold off;
grid on;
axis manual;
n=length(x);
for k=1:1
i=1;
while i <= n
pause(0.1);
y=y2(1:i);
ye=ye2(1:i);
refreshdata(gcf,"caller");
i=i+1;
endwhile
endfor