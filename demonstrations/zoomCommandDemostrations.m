clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','zoom Command Demostrations');
 sombrero ();
 pause (1);
 ## zoom in by a factor of 2
 zoom (2);
 pause (1);
 ## return to original zoom level
 zoom out;
 pause (1);
 ## zoom in by a factor of 2
 zoom (2);
 pause (1);
 ## set this zoom level as the "initial zoom level"
 ## and zoom in some more
 zoom reset;
 zoom (2);
 pause (1);
 ## return to zoom level set by last call to "zoom reset"
 zoom out;