clear all; close all; clc;
subplot(2,3,1)
t = 0:0.1:10*pi;
r = linspace (0, 1, numel (t));
z = linspace (0, 1, numel (t));
plot3 (r.*sin(t), r.*cos(t), z);
subplot(2,3,4)
t = 0:0.1:10*pi;
r = linspace (0, 1, numel (t));
z = linspace (0, 1, numel (t));
plot3 (-r.*sin(t), -r.*cos(t), z);
subplot(2,3,2)
t = 0:0.1:10*pi;
r = linspace (0, 1, numel (t));
z = linspace (0, 1, numel (t));
plot3 (r.*cos(t),r.*sin(t),z);
subplot(2,3,5)
t = 0:0.1:10*pi;
r = linspace (0, 1, numel (t));
z = linspace (0, 1, numel (t));
plot3(-r.*cos(t),-r.*sin(t),  z);