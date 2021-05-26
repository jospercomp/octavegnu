clear all; close all; clc;
%Matriz con columnas unicas
%randi([a b],rows,columns)
matriz=randi([0 1],5,10)
matrizu=[];
for i=1:size(matriz,2)
  unico=true;
  for j=i+1:size(matriz,2)
    if isequal(matriz(:,i),matriz(:,j)) 
      unico=false;
      break;
    endif
  endfor
  if unico
  matrizu=[matrizu matriz(:,i)];
  endif  
endfor
matrizu