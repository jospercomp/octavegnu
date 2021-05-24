clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name',strcat('Gráficas de Funciones Trigonométricas', ...
' TAN-SEC-CSC-COT'));
lw=3; fs=18; ms=0.5;
x = linspace(0,2*pi,10000);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,2)
y = cot(0.5*x);
y2 = cot(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('cot(0.5x)','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,4)
y = 3*sec(0.5*x);
y2 = sec(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('3sec(x)','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,1)
y = 1.5*tan(x)+2;
y2 = tan(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('1.5*tan(x)+2','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,3)
y = 0.5*csc(pi*x/2);
y2 = csc(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('0.5*csc(pi*x/2)','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,8)
y = sec(pi*x)-3;
y2 = sec(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('sec(pi*x)-3','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,5)
y = 2*tan(2*x);
y2 = tan(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('2*tan(2*x)','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,7)
y = csc(2*x)+1;
y2 = csc(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('csc(2*x)+1','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,4,6)
y = 3*cot(x)-2;
y2 = cot(x);
%plot(x,y,'.','markersize',ms,x,y2,'.','markersize',0.5*ms);
set(gca,'xaxislocation','origin',...
'yaxislocation','origin');
%'origin','bottom','top','zero'
box off; grid on;
title('3*cot(x)-2','fontsize',fs)
axis([0 2*pi -20 20])
set(gca,'YTick',-20:2:20)
set(gca,'xTick',0:pi/2:2*pi)
set(gca,'fontsize',fs,'yTickLabel', ...
{'','','','',''})
%{'-2','-1','0','1', '2'}
set(gca,'fontsize',fs,'xTickLabel', ...
{'','\pi_{/2}','\pi','3\pi_{/2}','2\pi'})