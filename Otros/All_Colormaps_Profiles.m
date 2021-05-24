clear all; close all; clc;
fs=20;
h=figure('Position',[1 21 1366 670], ...
'Name','Colormaps Profiles');
## Show the 'autumn' colormap profile and as an image
cmap=autumn(256);
subplot(4, 4, 1);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("Autumn",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 5);
rgbplot(cmap);
ylabel("Autumn",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'jet' colormap profile and as an image
cmap=jet(256);
subplot(4, 4, 2);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("Jet",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 6);
rgbplot(cmap);
ylabel("Jet",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'cubehelix' colormap profile and as an image
cmap=cubehelix(256);
subplot(4, 4, 3);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("Cubehelix",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 7);
rgbplot(cmap);
ylabel("Cubehelix",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'hsv' colormap profile and as an image
cmap=hsv(256);
subplot(4, 4, 4);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("HSV",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 8);
rgbplot(cmap);
ylabel("HSV",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
## Show the 'rainbow' colormap profile and as an image
cmap=rainbow(256);
subplot(4, 4, 9);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("Rainbow",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 13);
rgbplot(cmap);
ylabel("Rainbow",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'Hot' colormap profile and as an image
cmap=hot(256);
subplot(4, 4, 10);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("Hot",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 14);
rgbplot(cmap);
ylabel("Hot",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'Cool' colormap profile and as an image
cmap=cool(256);
subplot(4, 4, 11);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("Cool",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 15);
rgbplot(cmap);
ylabel("Cool",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'spring' colormap profile and as an image
cmap=spring(256);
subplot(4, 4, 12);
ml=size(cmap,1)-1;
hold on;
for i=0:1:ml
plot([i i],[0 1],'color',cmap(i+1,:))
endfor
set(gca,'YTick',0:0:1)
set(gca,'XTick',0:0:256)
axis([0 256 0 1])
hold off;
ylabel("Spring",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 16);
rgbplot(cmap);
ylabel("Spring",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')