clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Modelos Lineales, Polinomiales y Exponenciales', ...
''));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=5; fs2=18; fs3=16;
gav=0.3; vc1=[1 0 0]; vc2=[0 1 0]; vc3=[0 0 1];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
annotation ("textbox", [.46 .9 .5 .09], "string", ...
             {"¿Doble & Duplo?", ...
              "¿Triple & Triplo?"}, ...
             "horizontalalignment", "center", "fitboxtotext", "on", ...
             "edgecolor", [1 1 1], "fontsize", 20);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%             
subplot(1,3,1)
x = linspace(0,10,1000);
hold on;
plot(x,x,'-','linewidth',ms,'color',vc1);
plot(x,2*x,'-','linewidth',ms,'color',vc2);
plot(x,3*x,'-','linewidth',ms,'color',vc3);
hold off;
axis([0 6 0 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'Lineal'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
ylabel('',....
'fontsize',fs,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
h =legend("x","2x","3x");
legend(h,"location","southoutside");
set(h,"fontsize",20);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,2)
x = linspace(0,10,1000);
hold on;
plot(x,x,'-','linewidth',ms,'color',vc1);
plot(x,x.^2,'-','linewidth',ms,'color',vc2);
plot(x,x.^3,'-','linewidth',ms,'color',vc3);
hold off;
axis([0 6 0 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'Polinomial'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
ylabel('',....
'fontsize',fs3,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
h =legend("x","x^2","x^3");
legend(h,"location","southoutside");
set(h,"fontsize",20);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,3)
x = linspace(0,10,1000);
hold on;
plot(x,x,'-','linewidth',ms,'color',vc1);
plot(x,2.^x,'-','linewidth',ms,'color',vc2);
plot(x,3.^x,'-','linewidth',ms,'color',vc3);
hold off;
axis([0 6 0 6])
axis square;
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title({'Exponencial'}, ...
'fontsize',fs,'fontweight','bold')
xlabel('','fontsize',fs,'fontweight','bold')
ylabel('',....
'fontsize',fs,'fontweight','bold')
%set(gca,'fontsize',fs,'yTickLabel',{})
%set(gca,'fontsize',fs,'xTickLabel',{})
h =legend("x","2^x","3^x");
legend(h,"location","southoutside");
set(h,"fontsize",20);
