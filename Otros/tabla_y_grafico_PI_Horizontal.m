clear all; close all; clc;
f=figure('Name','Tabla y Gráfica Horizontal','Position',...
[100 102 1104  524]);
x=1:10;
[x,i]=sort(randi([1 100],1,10));
y=pi*(x);
dat=num2cell([x; y]);
rowname={'x','y'};
t=uitable('parent',f,'units','normalized', ...
'Position',[.16 .6  .7 0.145],'Data',dat, ...
'rowname', rowname);
subplot(2,1,2)
plot(x,y,'linewidth',3,x,y,'.','markersize',30)