clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','fplot Command Demostrations');
subplot(2,3,1) 
 colormap ("default");
 N = 31;
 [x, y] = meshgrid (1:N);
 tri = delaunay (x(:), y(:));
 z = peaks (N);
 h = trisurf (tri, x, y, z, "facecolor", "interp");
 axis tight;
 zlim auto;
 title (sprintf ("facecolor = %s", get (h, "facecolor")));
subplot(2,3,2) 
 colormap ("default");
 N = 31;
 [x, y] = meshgrid (1:N);
 tri = delaunay (x(:), y(:));
 z = peaks (N);
 h = trisurf (tri, x, y, z, "facecolor", "flat");
 axis tight;
 zlim auto;
 title (sprintf ("facecolor = %s", get (h, "facecolor")));
subplot(2,3,3) 
 colormap ("default");
 old_state = rand ("state");
 restore_state = onCleanup (@() rand ("state", old_state));
 rand ("state", 10);
 N = 10;
 x = 3 - 6 * rand (N, N);
 y = 3 - 6 * rand (N, N);
 z = peaks (x, y);
 tri = delaunay (x(:), y(:));
 trisurf (tri, x(:), y(:), z(:));
subplot(2,3,4) 
 colormap ("default");
 x = rand (100, 1);
 y = rand (100, 1);
 z = x.^2 + y.^2;
 tri = delaunay (x, y);
 trisurf (tri, x, y, z);
subplot(2,3,5) 
 colormap ("default");
 x = rand (100, 1);
 y = rand (100, 1);
 z = x.^2 + y.^2;
 tri = delaunay (x, y);
 trisurf (tri, x, y, z, "facecolor", "interp");
subplot(2,3,6) 
 colormap ("default");
 x = rand (100, 1);
 y = rand (100, 1);
 z = x.^2 + y.^2;
 tri = delaunay (x, y);
 trisurf (tri, x, y, z, "facecolor", "interp", "edgecolor", "k");