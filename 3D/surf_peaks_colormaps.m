clear all; close all; clc;
h=figure('Position',[10 64 643 482], ...
  'Name','Colormaps surface peaks');  %1 21 1366 670
fs=12;
matrizCa=[jet cubehelix hsv rainbow hot cool ...
spring summer autumn winter gray ...
bone copper pink ocean colorcube ...
flag lines prism];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matrizC=[];
for i=1:size(matrizCa,2)
unico=true;
for j=i+1:size(matrizCa,2)
if isequal(matrizCa(:,i),matrizCa(:,j))
strcat(num2str(i),'=',num2str(j),'=',num2str(size(matrizC,2)));  
unico=false;
break;
endif
endfor
if unico
matrizC=[matrizC matrizCa(:,i)];
endif
endfor
clear matrizCa;
surf(peaks)
%surf(sombrero)
for i=1:1000
ai=[randi(size(matrizC,2)) randi(size(matrizC,2)) randi(size(matrizC,2))];
cmap=[matrizC(:,ai(1)) matrizC(:,ai(2)) matrizC(:,ai(3))];
colormap(cmap)
colorbar();
title({"Column Index",num2str([ai(3) ai(1) ai(2)])}, ...
 'fontsize',fs,'fontweight','bold')
pause(1)
endfor