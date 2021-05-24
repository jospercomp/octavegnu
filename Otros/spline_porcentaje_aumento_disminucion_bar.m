clear all; close all; clc;
x = 0:10:100; 
A = 50; B = 1000;
vrand = A + (B-A)*rand(1,length(x));
xspline = 0:1:100;  
yspline = spline(x,vrand,xspline);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Spline Fit, Bar Graph,and Decrease Percentage', ...
''));
subplot(2,1,1)
title("spline fit to points from rand value");
plot(x,vrand,"--r", xspline,yspline,"g-", x,vrand,"b+");
vmax=max(transpose([yspline(2:length(yspline))' yspline(1:length(yspline)-1)']));
p= 100*(yspline(2:length(yspline))-yspline(1:length(yspline)-1)) ...
./(vmax);
%% ./(yspline(1:length(yspline)-1));
grid on;
set(gca,'xTick',0:5:100)
subplot(2,1,2)
bar(p)
pmax=max(p);
pmin=min(p);
axis([0 100 pmin pmax])
grid on;
set(gca,'xTick',0:5:100)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Spline Fit, Bar Graph, and Increase Percentage', ...
''));
subplot(2,1,1)
title("spline fit to points from rand value");
plot(x,vrand,"--r", xspline,yspline,"g-", x,vrand,"b+");
vmin=min(transpose([yspline(2:length(yspline))' yspline(1:length(yspline)-1)']));
p= 100*(yspline(2:length(yspline))-yspline(1:length(yspline)-1)) ...
./(vmin);
%% ./(yspline(1:length(yspline)-1));
grid on;
set(gca,'xTick',0:5:100)
subplot(2,1,2)
bar(p)
pmax=max(p);
pmin=min(p);
axis([0 100 pmin pmax])
grid on;
set(gca,'xTick',0:5:100)

%[yspline(2:length(yspline))' yspline(1:length(yspline)-1)' 
%  max(transpose([yspline(2:length(yspline))' yspline(1:length(yspline)-1)']))']