clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Funciones Polinómicas con Grados Pares E Impares', ...
' Coeficientes Principales & Comportamiento Final'));
%%%%%%%%%%%%%%%%%%%%%%%%%%
lw=3; fs=20; ms=0.5; fs2=18;
gav=0.35; vc=[1 0 0];
x = linspace(-5,5,1000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.84 0.07], "string", ...
             {'Funciones Polinómicas con Grados Pares E Impares',...
             'Coeficientes Principales & Comportamiento Final'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
ha1=annotation ("textbox", [0.1 0 0.22 0.995], "string", ...
             {'x\rightarrow+\infty,f(x)\rightarrow+\infty',...
             'x\rightarrow-\infty,f(x)\rightarrow+\infty'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,1)
y=x.^2;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
ylabel('f(x)=x^2','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,5)
y = x.^4;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=x^4','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,9)
y = x.^6;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=x^6','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 0.64 0.995], "string", ...
             {'x\rightarrow+\infty,f(x)\rightarrow-\infty',...
             'x\rightarrow-\infty,f(x)\rightarrow-\infty'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,2)
y=-x.^2;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
ylabel('f(x)=-x^2','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,6)
y = -x.^4;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=-x^4','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,10)
y = -x.^6;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=-x^6','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 1.06 0.995], "string", ...
             {'x\rightarrow+\infty,f(x)\rightarrow+\infty',...
             'x\rightarrow-\infty,f(x)\rightarrow-\infty'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
subplot(3,4,3)
y=x;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
ylabel('f(x)=x','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,7)
y =x.^3;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=x^3','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,11)
y = x.^5;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=x^5','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ha1=annotation ("textbox", [0.1 0 1.42 0.995], "string", ...
             {'x\rightarrow+\infty,f(x)\rightarrow-\infty',...
             'x\rightarrow-\infty,f(x)\rightarrow+\infty'}, ...
             "fontsize", fs2, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
subplot(3,4,4)
y=-x;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
ylabel('f(x)=-x','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,8)
y=-x.^3;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=-x^3','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,4,12)
y=-x.^5;
plot(x,y,'-k','linewidth',lw,'color',vc);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
box off; grid on;
ylabel('f(x)=-x^5','fontsize',fs,'fontweight','bold')
set(gca,'fontsize',fs,'yTickLabel',{})
set(gca,'fontsize',fs,'xTickLabel',{})
set(gca,'gridalpha',gav)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
