clear all; close all; clc;
matrizCa=[jet cubehelix hsv rainbow hot cool ...
spring summer autumn winter gray ...
bone copper pink ocean colorcube ...
flag lines prism 1-jet 1-cubehelix 1-hsv 1-rainbow 1-hot 1-cool ...
1-spring 1-summer 1-autumn 1-winter 1-gray ...
1-bone 1-copper 1-pink 1-ocean 1-colorcube ...
1-flag 1-lines 1-prism];
close(1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Creando la matriz de elementos unicos
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Variabilidad de la suma
matrizS=sum(round(matrizC*255),1); %sum of columns
[s, is] = sort(matrizS);
index=[1:size(matrizS,2); matrizS; 1:size(matrizS,2); is;s]';
matrizC=matrizC(:,is(1:size(matrizC,2)));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Variabilidad de los modelos por diferentes en y entre datos
matrizV=[];
for i=1:size(matrizC,2)
matrizV=[matrizV matrizC(2:size(matrizC),i)-matrizC(1:size(matrizC)-1,i)];
endfor
matrizS=floor(sum(abs(matrizV),1)*255); %sum of columns
[s, is] = sort(matrizS);
index=[1:size(matrizS,2); matrizS; 1:size(matrizS,2); is;s]'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Export colormap matrix
row=size(matrizC,1);
col=size(matrizC,2);
opc2=1;
Lcolor="{";
for i=1:row
Lcolor=strcat(Lcolor,"{");
for j=1:col
if(j<col)
switch mod(opc2,2)+1
case 1
Lcolor=strcat(Lcolor,num2str(matrizC(i,is(j))),",");
case 2
Lcolor=strcat(Lcolor,num2str(round(matrizC(i,is(j))*255)),",");
endswitch
else
switch mod(opc2,2)+1
case 1
Lcolor=strcat(Lcolor,num229str(matrizC(i,is(j))),"}");
case 2
Lcolor=strcat(Lcolor,num2str(round(matrizC(i,is(j))*255)),"}");
endswitch
endif
endfor
if(i<row)
Lcolor=strcat(Lcolor,",");
endif
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Lcolor=strcat(Lcolor,"}")
fid = fopen("myfile.txt", "w");
fdisp(fid,strcat("Lcolor=",Lcolor));
fclose(fid);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:size(matrizC,2)
ind=mod(i,29);  
if ind==1
  h=figure('Position',[1 21 1366 670], ...
      'Name',strcat('Modelos, Graficas y Funciones RGB para Colormaps', ...
      ' ordenado por la Variabilidad de los Modelos'));
endif
if ind==0
  ind=29;
endif
subplot(6, 5, ind);
plot(matrizC(:,is(i)),'-','linewidth',4)
title(strcat("Plot-",num2str(i)))
ylabel(num2str(s(i)))
%xlabel(num2str(is(i)))
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
endfor
