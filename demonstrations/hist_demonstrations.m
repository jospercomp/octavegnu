clear all; close all; clc;
subplot(1,2,1)
hist(randn(1,100),25, ...
"facecolor","r","edgecolor","b");
subplot(1,2,2)
%rand(datos,grupos)
%rand(rows,columns)
hist(rand(10,3));
colormap(summer());