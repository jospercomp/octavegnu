clear all; close all; clc;
figure(1)
hp=pie3([3 4]);
axis on;
%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
hp=pie3([3 4]);
%axis on;
pa=get(gca,'position');
set(gca,'position',[pa(1)-0.25 pa(2)-0.2 pa(3)+0.45 pa(4)+0.45])

