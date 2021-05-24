clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','treeplot Command Demostrations');
subplot(1,2,1)
treeplot([2 4 2 0 6 4 6]);
 % Plot a simple tree plot
subplot(1,2,2)
treeplot([2 4 2 0 6 4 6], "b+", "g");
 % Plot a simple tree plot defining the edge and node styles