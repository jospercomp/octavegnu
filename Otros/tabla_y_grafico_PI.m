clear all; close all; clc;
f=figure('Name','Tabla y Gráfica','Position',...
[100 102 1104  524]);
x=1:10;
[x,i]=sort(randi([1 100],1,10));
y=pi*(x);
dat=num2cell([x' y']);
columnname={'x','y'};
t=uitable('parent',f,'units','normalized', ...
'Position',[.2 .1 0.16 .8],'Data',dat, ...
'columnname', columnname);
subplot(1,2,2)
plot(x,y,'linewidth',3,x,y,'.','markersize',30)