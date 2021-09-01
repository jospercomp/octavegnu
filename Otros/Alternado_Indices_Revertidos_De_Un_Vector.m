clear all; close all; clc;
#index=1:31
index=1:randi([10 31],1,1)
index1=1:floor(length(index)/2)
index2=index(length(index):-1:floor(length(index)/2)+1)
imax=min(length(index1),length(index2))
indexa=[];
for i=1:imax
  indexa=[indexa index1(i)];
  indexa=[indexa index2(i)];
endfor
if mod(length(index),2) == 1 
  indexa=[indexa index2(imax+1)];
endif 
indexa
length(indexa)