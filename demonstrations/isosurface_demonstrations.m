clear all; close all; clc;
h=figure('Position',[146 38 560 371], ...
'Name','Isosurface Demonstrations');
subplot(1,2,1) 
[x,y,z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);
v = x.^2 + y.^2 + z.^2;
isosurface(x, y, z, v, 1);
axis equal;
title("isosurface() of a sphere");
subplot(1,2,2)
[x,y,z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);
v = x.^2 + y.^2 + z.^2;
isosurface(x, y, z, v, 3);
isosurface(x, y, z, v, 5);
axis equal;
title("isosurfaces of two nested spheres");