clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','Colormaps con las 6 permutations de los modelos');
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ai=[1 2 3];    %jet [1 2 3]
%ai=[4 5 6];    %cubehelix [4 5 6]
%ai=[7 8 9];    %hsv [7 8 9]
%ai=[10 11 12]; %rainbow [10 11 12]
%ai=[13 14 15]; %hot [13 14 15]
%ai=[33 16 19]; %cool [16 17 18]
%ai=[19 33 16]; %spring [19 20 21]
%ai=[33 17 18]; %summer [22 23 24]
%ai=[19 33 20]; %autumn [25 26 27]
%ai=[20 33 21]; %winter [28 29 30]
%ai=[33 33 33]; %gray [31 32 33]
%ai=[22 23 24]; %bone [34 35 36]
%ai=[25 26 27]; %copper [37 38 39]
%ai=[28 29 30]; %pink [40 41 42]
%ai=[31 32 33]; %ocean [43 44 45]
%ai=[34 35 36]; %colorcube [46 47 48]
%ai=[37 38 39]; %flag [49 50 51]
%ai=[40 41 42]; %lines [52 53 54] 
%ai=[43 44 45]; %prism [55 56 57]
%ai=[randi(size(matrizC,2)) randi(size(matrizC,2)) randi(size(matrizC,2))];
%ai=[1 2 3];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cmap=[matrizC(:,ai(1)) matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 3, 1);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:63)
axis([0 63 0 1])
hold off;
title({"Column Index",num2str([ai(1) ai(2) ai(3)])},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 3, 4);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cmap=[matrizC(:,ai(1)) matrizC(:,ai(3)) matrizC(:,ai(2))];
subplot(4, 3, 7);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:63)
axis([0 63 0 1])
hold off;
title({"Column Index",num2str([ai(1) ai(3) ai(2)])},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 3, 10);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cmap=[matrizC(:,ai(2)) matrizC(:,ai(1)) matrizC(:,ai(3))];
subplot(4, 3, 2);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:63)
axis([0 63 0 1])
hold off;
title({"Column Index",num2str([ai(2) ai(1) ai(3)])},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 3, 5);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cmap=[matrizC(:,ai(2)) matrizC(:,ai(3)) matrizC(:,ai(1))];
subplot(4, 3, 8);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:63)
axis([0 63 0 1])
hold off;
title({"Column Index",num2str([ai(2) ai(3) ai(1)])},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 3, 11);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cmap=[matrizC(:,ai(3)) matrizC(:,ai(1)) matrizC(:,ai(2))];
subplot(4, 3, 3);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:63)
axis([0 63 0 1])
hold off;
title({"Column Index",num2str([ai(3) ai(1) ai(2)])},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 3, 6);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cmap=[matrizC(:,ai(3)) matrizC(:,ai(2)) matrizC(:,ai(1))];
subplot(4, 3, 9);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:63)
axis([0 63 0 1])
hold off;
title({"Column Index",num2str([ai(3) ai(2) ai(1)])},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 3, 12);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')