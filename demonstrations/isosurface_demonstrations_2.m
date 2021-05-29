clear all; close all; clc;
x = 0:2; y = 0:3; z = 0:1;
[xx, yy, zz] = meshgrid(x, y, z);
v        = [0, 0, 0; 0, 0, 0; 0, 0, 1; 0, 0, 1];
v(:,:,2) = [0, 0, 0; 0, 0, 1; 0, 1, 2; 0, 1, 2];
iso = 0.8;
## Three arguments, no output
subplot(2, 2, 1);
fvc = isosurface(v, iso, yy);
patch(fvc);
shading faceted;
view(110, 40);
## six arguments, no output (x, y, z are vectors)
subplot (2, 2, 2);
fvc = isosurface(x, y, z, v, iso, yy);
patch(fvc);
shading faceted;
view(110, 40);
## six arguments, no output (x, y, z are matrices)
subplot(2, 2, 3);
fvc = isosurface (xx, yy, zz, v, iso, yy);
patch(fvc);
shading faceted;
view(110, 40);
## six arguments, no output (mixed x, y, z) and option "noshare"
subplot(2, 2, 4);
fvc = isosurface(x, yy, z, v, iso, yy, "noshare");
patch(fvc);
shading faceted;
view(110, 40);
annotation("textbox", [0.1 0.9 0.9 0.1], ...
      "String", {["Apart from the first plot having a different scale, " ...
                  "all four plots must look the same."],
                 ["The last plot might have different colors but must " ...
                  "have the same shape."]}, ...
      "HorizontalAlignment", "left", ...
      "FontSize", 12);