clear all; close all;clc;
p=10; %change this parameter p>=1
vci=fix((0:p)*(255/p));
vc=[];
for i=1:length(vci)
  for j=1:length(vci)
     for k=1:length(vci)
         vc=[vc; vci(i) vci(j) vci(k)];
endfor
endfor
endfor
colormap(vc/255)
image (1:size(vc,1), linspace (0, 1, size(vc,1)),...
repmat ((1:size(vc,1))', 1, size(vc,1)));
axis ([1, size(vc,1), 0, 1], "ticy", "xy");
title('Colormap Partitions','fontsize',20)