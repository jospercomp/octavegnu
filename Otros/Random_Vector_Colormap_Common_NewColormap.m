clear all; close all; clc;
h=figure('Position',[1     21   1366    670], ...
'Name','Mapas en Colormap');
fs=20;

matrizC=[jet cubehelix hsv rainbow hot cool ...
         spring summer autumn winter gray ...
         bone copper pink ocean colorcube ...  
         flag lines prism];
## Show the 'flag' colormap profile and as an image
ai=[randi([1 57]) randi([1 57]) randi([1 57])];
cmap=[matrizC(:,ai(1))  matrizC(:,ai(2)) matrizC(:,ai(3))];
subplot(2, 1, 1);
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
subplot(2, 1, 2);
rgbplot(cmap);
ylabel("Value",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')         