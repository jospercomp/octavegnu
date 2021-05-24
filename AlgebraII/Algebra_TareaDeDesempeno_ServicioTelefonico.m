clear all; close all; clc;
lw=2; fs=26; ms=0.5; fs2=18;
cC=3; fsL=20;
x=0:0.5:570;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Tarea de Desempeño', ...
' Servicio Telefónico'));
%subplot(3,1,1)
hold on;
plot(x,0*x+24.80,'-','linewidth',lw,'color',[1 0 0]);
plot(x,0*x+42.60,'-','linewidth',lw,'color',[0 1 0]);
plot(x,0*x+84.95,'-','linewidth',lw,'color',[0 0 1]);
hold off;
hL=legend({"Plan Básico", "Plan Básico Plus","Plan Ilimitado"}, ...
         "location", "southeast", "orientation", "horizontal");
set(hL, "fontsize", fsL);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
xlabel('Minutos','fontsize',fs2,'fontweight','bold')
ylabel('Dolares','fontsize',fs2,'fontweight','bold')
title({"Gráfica 1", ...
"Servicio Telefónico de llamadas locales en el mismo estado"}, ...
'fontsize',fs)
axis([0 570 0 90])
set(gca,'YTick',0:5:90)
set(gca,'xTick',0:15:570)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Tarea de Desempeño', ...
' Servicio Telefónico'));
%subplot(3,1,2)
hold on;
plot(x,0.116*x+24.80,'-','linewidth',lw,'color',[1 0 0]);
plot(x,0*x+42.60,'-','linewidth',lw,'color',[0 1 0]);
plot(x,0*x+84.95,'-','linewidth',lw,'color',[0 0 1]);
hold off;
hL=legend({"Plan Básico", "Plan Básico Plus","Plan Ilimitado"}, ...
         "location", "southeast", "orientation", "horizontal");
set(hL, "fontsize", fsL);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
xlabel('Minutos','fontsize',fs2,'fontweight','bold')
ylabel('Dolares','fontsize',fs2,'fontweight','bold')
title({"Gráfica 2",...
"Servicio Telefónico de llamadas entre Estados"},'fontsize',fs)
axis([0 570 0 90])
set(gca,'YTick',0:5:90)
set(gca,'xTick',0:15:570)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Tarea de Desempeño', ...
' Servicio Telefónico'));
%subplot(3,1,3)
hold on;
plot(x,0.116*x+24.80,'-','linewidth',lw,'color',[1 0 0]);
plot(x,0.083*x+42.60,'-','linewidth',lw,'color',[0 1 0]);
plot(x,0*x+84.95,'-','linewidth',lw,'color',[0 0 1]);
hold off;
hL=legend({"Plan Básico", "Plan Básico Plus","Plan Ilimitado"}, ...
         "location", "southeast", "orientation", "horizontal");
set(hL, "fontsize", fsL);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
xlabel('Minutos','fontsize',fs2,'fontweight','bold')
ylabel('Dolares','fontsize',fs2,'fontweight','bold')
title({"Gráfica 3",...
"Servicio Telefónico de llamadas internacionales"},'fontsize',fs)
axis([0 570 0 90])
set(gca,'YTick',0:5:90)
set(gca,'xTick',0:15:570)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
