clear all; close all; clc;
%Matriz con filas unicas
%randi([a b],rows,columns)
matriz=randi([0 1],10,5)
matrizu=[];
for i=1:size(matriz,1)
  unico=true;
  for j=i+1:size(matriz,1)
    if isequal(matriz(i,:),matriz(j,:)) 
      unico=false;
      break;
    endif
  endfor
  if unico
  matrizu=[matrizu; matriz(i,:)];
  endif  
endfor
matrizu