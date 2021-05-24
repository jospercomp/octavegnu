clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','shrinkfaces Command Demonstrations');
 N = 10;  % N intervals per axis
 [x, y, z] = meshgrid (linspace (-4,4,N+1));
 val = x.^3 + y.^3 + z.^3;
 fv = isosurface (x, y, z, val, 3, z, "noshare");

 p = patch ("Faces", fv.faces, "Vertices", fv.vertices, "FaceVertexCData", ...
            fv.facevertexcdata, "FaceColor", "interp", "EdgeColor", "black");
 axis auto;   # Kludge required for Octave
 axis equal;
 view (115, 30);
 drawnow;
 shrinkfaces (p, 0.6);