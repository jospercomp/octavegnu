clear all; close all; clc;
h=figure('Position',[1     21   1366    670], ...
'Name','Mapas en Colormap');
fs=20;

matrizC=[jet cubehelix hsv rainbow hot cool ...
         spring summer autumn winter gray ...
         bone copper pink ocean colorcube ...  
         flag lines prism];
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 1);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 5);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 2);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 6);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 3);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 7);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')     
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 4);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 8);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 9);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 13);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 10);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 14);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 11);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 15);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')     
###############################################################         
## Show the colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(4, 4, 12);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:),'linewidth',17)
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:64)
axis([0 64 0 1])
hold off;
title({"Column Index",num2str(ai)},'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 16);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')            