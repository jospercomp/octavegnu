clear all; close all; clc;
col={'height','age','weight'};
row={'first','second','third'};
dat={'177','21','67';
     '178','22','67';
     '179','21','67'};
uitable('columnname',col,'rowname',row, ... 
'position',[20 20 287 100],'data',dat)
%%%%%%%%%%%%%%%%%%%
x=[1 2 3 4 5]; 
y=10^3*sin(x);
z=cos(x);
w=2*sin(2.*x);
f=figure('Name','Second UItable','Position',...
[100 100 450 200]);
dat=num2cell([x' y' z' w']); 
columnname={'Input','Left Machine', ...
'Right Machine','Middle Machine'};
t=uitable('parent',f,'units','normalized', ...
'Position',[.1 .1 0.75 .8],'Data',dat, ...
'columnname', columnname);
