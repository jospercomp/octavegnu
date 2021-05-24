clear all; close all; clc;
fs=20;
h=figure('Position',[1 21 1366 670], ...
'Name','Colormaps Profiles');
## Show the 'summer' colormap profile and as an image
cmap=summer(256);
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
ylabel("Summer",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 5);
rgbplot(cmap);
ylabel("Summer",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'winter' colormap profile and as an image
cmap=winter(256);
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
ylabel("Winter",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 6);
rgbplot(cmap);
ylabel("Winter",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'gray' colormap profile and as an image
cmap=gray(256);
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
ylabel("Gray",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 7);
rgbplot(cmap);
ylabel("Gray",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'bone' colormap profile and as an image
cmap=bone(256);
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
ylabel("Bone",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 8);
rgbplot(cmap);
ylabel("Bone",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
## Show the 'copper' colormap profile and as an image
cmap=copper(256);
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
ylabel("Copper",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 13);
rgbplot(cmap);
ylabel("Copper",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'Pink' colormap profile and as an image
cmap=pink(256);
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
ylabel("Pink",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 14);
rgbplot(cmap);
ylabel("Pink",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'Ocean' colormap profile and as an image
cmap=ocean(256);
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
ylabel("Ocean",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 15);
rgbplot(cmap);
ylabel("Ocean",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'colorcube' colormap profile and as an image
cmap=colorcube(256);
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
ylabel("Colorcube",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 16);
rgbplot(cmap);
ylabel("Colorcube",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')