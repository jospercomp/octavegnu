clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','lighting Command Demonstrations');
subplot(2,3,1) 
 colormap ("default");
 sombrero ();
 shading flat
 lighting flat
 light ();
 title ("shading flat - lighting flat");
subplot(2,3,2) 
 colormap ("default");
 sombrero ();
 shading interp
 lighting gouraud
 light ();
 title ("shading interp - lighting gouraud");
subplot(2,3,3) 
 colormap ("default");
 pcolor (peaks ());
 shading flat
 lighting flat
 light ();
 view (3)
 title ("shading flat - lighting flat");
subplot(2,3,4) 
 colormap ("default");
 pcolor (peaks ());
 shading interp
 lighting gouraud
 light ();
 view (3)
 title ("shading interp - lighting gouraud");
subplot(2,3,5) 
 colormap ("default");
 mesh (sombrero ());
 shading flat
 lighting flat
 light ();
 title ("shading flat - lighting flat");
subplot(2,3,6) 
 colormap ("default");
 mesh (sombrero ());
 shading interp
 lighting gouraud
 light ();
 title ("shading interp - lighting gouraud");