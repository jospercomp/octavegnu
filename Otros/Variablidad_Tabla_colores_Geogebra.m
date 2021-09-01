clear all; close all; clc;
matrizCa=[jet cubehelix hsv rainbow hot cool ...
spring summer autumn winter gray ...
bone copper pink ocean colorcube ...
flag lines prism];
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
Lcolor=strcat(Lcolor,num2str(matrizC(i,is(j))),"}");
case 2
Lcolor=strcat(Lcolor,num2str(round(matrizC(i,is(j))*255)),"}");
endswitch
endif
endfor
if(i<row)
Lcolor=strcat(Lcolor,",");
endif
endfor
Lcolor=strcat(Lcolor,"}")
fid = fopen("myfile.txt", "w");
fdisp(fid,strcat("Lcolor=",Lcolor));
fclose(fid);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ans=input('Desea graficar los modelos de colores (true,false):');
ans=1;
ry=1;
if ans % MATRIZ de Modelos, Graficas, Funciones
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Modelos, Graficas y Funciones RGB para Colormaps', ...
' ordenado por la Variabilidad de los Modelos'));
%is3=is2(is(1:size(matrizC,2)));
for i=1:size(matrizC,2)
subplot(9, 5, i);
if ry
plot(1-matrizC(:,is(i)),'-','linewidth',4)
else
plot(matrizC(:,is(i)),'-','linewidth',4)
endif
title(strcat("Plot-",num2str(i)))
ylabel(num2str(s(i)))
%xlabel(num2str(is(i)))
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:63)
axis([0 63 0 1])
endfor
endif
#cmap = jet; %[1 2 3]
%cmap = cubehelix; %[4 5 6];
%cmap = hsv; %[7 8 9]
%cmap = rainbow; %[10 11 12]
%cmap = hot; %[13 14 15]
%cmap = cool; %[33 16 19] =[16 17 18]
%cmap = spring; %[19 33 16]=[19 20 21]
%cmap = summer; %[33 17 18]=[22 23 24]
%cmap = autumn; %[19 33 20]=[25 26 27]
%cmap = winter; %[20 33 21] =[28 29 30]
%cmap = gray; %[33 33 33]=[31 32 33]
%cmap = bone; %[22 23 24]=[34 35 36]
%cmap = copper; %[25 26 27]=[37 38 39]
%cmap = pink; %[28 29 30]=[40 41 42]
%cmap = ocean; %[31 32 33]=[43 44 45]
%cmap = colorcube; %[34 35 36]=[46 47 48]
%cmap = flag; %[37 38 39]=[49 50 51]
%cmap = lines; %[40 41 42]=[52 53 54]
%cmap = prism; %[43 44 45]=[55 56 57]