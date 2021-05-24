%Especificar las etiquetas y los valores
%de las marcas del eje con yticklabel & xticklabel
clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Generador de Interceptos en X y Y en cada Cuadrante', ...
' y Ecuación Pendiente-Intercepto'));
lw=3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,1)
a=-1*randi([1,8],1,1); %(a,0)
b=1*randi([1,8],1,1); %(0,b)
x = linspace(-10,10);
y = (-b/a)*x+b;
plot(x,y,'linewidth',lw);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,2)
a=1*randi([1,8],1,1); %(a,0)
b=1*randi([1,8],1,1); %(0,b)
x = linspace(-10,10);
y = (-b/a)*x+b;
plot(x,y,'linewidth',lw);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,3)
a=-1*randi([1,8],1,1); %(a,0)
b=-1*randi([1,8],1,1); %(0,b)
x = linspace(-10,10);
y = (-b/a)*x+b;
plot(x,y,'linewidth',lw);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,2,4)
a=1*randi([1,8],1,1); %(a,0)
b=-1*randi([1,8],1,1); %(0,b)
x = linspace(-10,10);
y = (-b/a)*x+b;
plot(x,y,'linewidth',lw);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%