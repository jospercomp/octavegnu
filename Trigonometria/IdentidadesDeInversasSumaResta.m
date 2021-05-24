clear all; close all; clc;
%long format e
subplot(3,1,1)
x=linspace(-2*pi,2*pi,10000);
y=asin(x)+acos(x);
mean(y)
plot(x,y)
subplot(3,1,2)
x=linspace(-2*pi,2*pi,10000);
y=1./atan(x);
plot(x,y)
subplot(3,1,3)
x=linspace(-2*pi,2*pi,10000);
y=acot(x);
plot(x,y)

%x=linspace(-2*pi,2*pi,10000);
%y=acsc(x)+asec(x);
%mean(y)
%plot(x,y)
