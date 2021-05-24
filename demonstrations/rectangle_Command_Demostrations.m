clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','rectangle Command DemoNstrations');
subplot(1,3,1) 
 axis equal;
 rectangle ("Position", [0.05, 0.05, 0.9, 0.9], "Curvature", [0.5, 0.5]);
 title ("rectangle() with corners curved",'fontsize',20);
subplot(1,3,2) 
 axis equal;
 rectangle ("Position", [0.05, 0.05, 0.9, 0.4], "Curvature", 1.0);
 title ("rectangle() with sides as complete arcs",'fontsize',20);
subplot(1,3,3) 
 axis equal;
 h = rectangle ("Position", [0.05, 0.05, 0.9, 0.4], "Curvature", 1.0);
 set (h, "FaceColor", [0, 1, 0]);
 title ("rectangle() with FaceColor = green",'fontsize',20);