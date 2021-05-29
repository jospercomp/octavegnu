clear all; close all; clc;
%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,1)
hist(rand(3,5));
h = legend("show");
legend(h,"location","northeastoutside");
set(h,"fontsize", 20);
%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
%rand(datos,grupos)
%rand(rows,columns)
hist(rand(5,3));
colormap(summer());
h = legend("show");
legend(h,"location","northeastoutside");
set(h,"fontsize", 20);
