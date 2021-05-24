close all; clear all; clc;
x=1:10
y=2*abs(x/2-floor(x/2+1/2))
y2=(1-cos(x*pi))/2
y3=(1-(-1).^x)/2
transpose([x ; y; y2; y3])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x=linspace(1,10,100);
y=2*abs(x/2-floor(x/2+1/2));
y2=(1-cos(x*pi))/2;
y3=(1-(-1).^x)/2;
x3=x(imag(y3)==0)
y3=y(imag(y3)==0)
plot(x,y,x,y2,x3,y3)
title("Funciones & Secuencias Alternantes Discretas en los Enteros")