clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','shrinkfaces Command Demonstrations');
subplot(2,2,1) 
 faces = [1 2 3; 1 3 4];
 vertices = [0 0; 1 0; 1 1; 0 1];
 patch ("Faces", faces, "Vertices", vertices, "FaceColor", "none");
 fv = shrinkfaces (faces, vertices, 0.25);
 patch (fv);
 axis auto;   # Kludge required for Octave
 axis equal;
subplot(2,2,2) 
 faces = [1 2 3 4; 5 6 7 8];
 vertices = [0 0; 1 0; 2 1; 1 1; 2 0; 3 0; 4 1; 3.5 1];
 patch ("Faces", faces, "Vertices", vertices, "FaceColor", "none");
 fv = shrinkfaces (faces, vertices, 0.25);
 patch (fv);
 axis auto;   # Kludge required for Octave
 axis equal;
 grid on;
subplot(2,2,3) 
 faces = [1 2 3 4];
 vertices = [-1 2; 0 0; 1 2; 0 1];
 patch ("Faces", faces, "Vertices", vertices, "FaceColor", "none");
 fv = shrinkfaces (faces, vertices, 0.25);
 patch (fv);
 axis auto;   # Kludge required for Octave
 axis equal;
 grid on;
 title "faces which are not convex are clearly not allowed"
subplot(2,2,4) 
 [phi r] = meshgrid (linspace (0, 1.5*pi, 16), linspace (1, 2, 4));
 tri = delaunay (phi(:), r(:));
 v = [r(:).*sin(phi(:)) r(:).*cos(phi(:))];
 p = patch ("Faces", tri, "Vertices", v, "FaceColor", "none");
 fv = shrinkfaces (p);
 patch (fv);
 axis auto;   # Kludge required for Octave
 axis equal;
 grid on;