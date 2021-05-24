clear all; close all; clc;
data=[randi([1 5],10,1) randi([1 10],10,2)]
vu=unique(data(:,1));
for i=1:length(vu)
disp('%%%%%%%%%%')
value=vu(i)
I = find(data(:,1) == value);
It=transpose(I)
%data(I,:)
M=data(I,2:3)
end