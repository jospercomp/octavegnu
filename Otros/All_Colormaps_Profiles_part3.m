clear all; close all; clc;
fs=20;
h=figure('Position',[1 21 1366 670], ...
'Name','Colormaps Profiles');
## Show the 'flag' colormap profile and as an image
cmap=flag(256);
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
ylabel("Flag",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 6);
rgbplot(cmap);
ylabel("Flag",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'Lines' colormap profile and as an image
cmap=lines(256);
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
ylabel("Lines",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 7);
rgbplot(cmap);
ylabel("Lines",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
## Show the 'Prism' colormap profile and as an image
cmap=prism(256);
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
ylabel("Prism",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 14);
rgbplot(cmap);
ylabel("Prism",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
## Show the 'White' colormap profile and as an image
cmap=white(256);
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
ylabel("White",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')
subplot(4, 4, 15);
rgbplot(cmap);
ylabel("White",'fontsize',fs,'fontweight','bold')
xlabel("color index",'fontsize',fs,'fontweight','bold')