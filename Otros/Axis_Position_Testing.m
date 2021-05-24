clear all; close all; clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Axis Alignment of five plots 
%in configuration 
%3 plots-1 row and 2 plots - 2 rows.
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Axis Alignment of five plots',...
 ' - 3 plots-1 row and 2 plots - 2 rows'));
subplot(2,3,1)
plot(0,0)
ax1=get(gca,'position');
subplot(2,3,2)
plot(0,0)
ax2=get(gca,'position');
subplot(2,3,3)
plot(0,0)
ax3=get(gca,'position');
subplot(2,3,4)
plot(0,0)
ax4=get(gca,'position');
set(gca,"position", [ax4(1)+0.15, ax4(2), ax4(3), ax4(4)]);
subplot(2,3,6)
plot(0,0)
ax5=get(gca,'position');
set(gca,"position", [ax5(1)-0.15, ax5(2), ax5(3), ax5(4)]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Axis Alignment of five plots 
%in configuration 
%2 plots-1 row and 3 plots - 2 rows.
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Axis Alignment of five plots',...
 ' - 2 plots-1 row and 3 plots - 2 rows'));
subplot(2,3,1)
plot(0,0)
ax1=get(gca,'position');
set(gca,"position", [ax1(1)+0.15, ax1(2), ax1(3), ax1(4)]);
subplot(2,3,3)
plot(0,0)
ax2=get(gca,'position');
set(gca,"position", [ax2(1)-0.15, ax2(2), ax2(3), ax2(4)]);
subplot(2,3,4)
plot(0,0)
ax3=get(gca,'position');
subplot(2,3,5)
plot(0,0)
ax4=get(gca,'position');
subplot(2,3,6)
plot(0,0)
ax5=get(gca,'position');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Axis Alignment of five plots 
%in configuration 
%2x2x1 plots in 3 columns
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Axis Alignment of five plots',...
 ' - 2x2x1 plots in 3 columns'));
subplot(2,3,1)
plot(0,0)
ax1=get(gca,'position');
subplot(2,3,2)
plot(0,0)
ax2=get(gca,'position');
subplot(2,3,4)
plot(0,0)
ax3=get(gca,'position');
subplot(2,3,5)
plot(0,0)
ax4=get(gca,'position');
subplot(2,3,6)
plot(0,0)
ax5=get(gca,'position');
set(gca,"position", [ax5(1), ax5(2)+0.15, ax5(3), ax5(4)]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Axis Alignment of five plots 
%in configuration 
%2x1x2 plots in 3 columns
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Axis Alignment of five plots',...
 ' - 2x1x2 plots in 3 columns'));
subplot(2,3,1)
plot(0,0)
ax1=get(gca,'position');
subplot(2,3,3)
plot(0,0)
ax2=get(gca,'position');
subplot(2,3,4)
plot(0,0)
ax3=get(gca,'position');
subplot(2,3,6)
plot(0,0)
ax4=get(gca,'position');
subplot(2,3,5)
plot(0,0)
ax5=get(gca,'position');
set(gca,"position", [ax5(1), ax5(2)+0.15, ax5(3), ax5(4)]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Axis Alignment of five plots 
%in configuration 
%1x2x2 plots in 3 columns
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Axis Alignment of five plots',...
 ' - 1x2x2 plots in 3 columns'));
subplot(2,3,2)
plot(0,0)
ax1=get(gca,'position');
subplot(2,3,3)
plot(0,0)
ax2=get(gca,'position');
subplot(2,3,5)
plot(0,0)
ax3=get(gca,'position');
subplot(2,3,6)
plot(0,0)
ax4=get(gca,'position');
subplot(2,3,4)
plot(0,0)
ax5=get(gca,'position');
set(gca,"position", [ax5(1), ax5(2)+0.15, ax5(3), ax5(4)]);