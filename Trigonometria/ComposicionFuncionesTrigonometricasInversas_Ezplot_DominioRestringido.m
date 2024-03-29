clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Composición de Funciones Trigonométricas Inversas', ...
' en Funciones Trigonométricas'));
vc=[0.00000 0.44700 0.74100];
vc=[0 0 1];
ms=1; %ms=12;
lw=0.5; lw=5;
subplot(2,4,1)
h1=ezplot('sin(asin(x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
subplot(2,4,2)
h1=ezplot('csc(asin(1/x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
subplot(2,4,3)
h1=ezplot('sin(acsc(x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
subplot(2,4,4)
h1=ezplot('csc(asin(x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,5)
h1=ezplot('cos(acos(x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
subplot(2,4,6)
h1=ezplot('sec(acos(1/x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
subplot(2,4,7)
h1=ezplot('cos(asec(x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
subplot(2,4,8)
h1=ezplot('sec(acos(x))',[-6 6]);
set(h1,'linejoin','round','linestyle','-','linewidth',lw, ...
    'marker','none','markeredgecolor','auto','markerfacecolor','none', ...
    'markersize',ms,'color',vc)
grid on;
