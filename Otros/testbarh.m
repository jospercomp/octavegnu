clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
%%%%%%%%%%%%%%%%%%%%%%%%%
nestudiantes=25;
data=round(50*rand(1,nestudiantes)+50);
%%%%%%%%%%%%%%%%%%%%%%%%%
lescala={'A','B','C','D','F'};
countA=0; countB=0; countC=0; countD=0; countF=0;
for i=1:length(data)
if(data(i)>=90 && data(i)<=100);
countA=countA+1;
endif
if(data(i)>=80 && data(i)<90);
countB=countB+1;
endif
if(data(i)>=70 && data(i)<80);
countC=countC+1;
endif
if(data(i)>=60 && data(i)<70);
countD=countB+1;
endif
if(data(i)>=0 && data(i)<60);
countF=countF+1;
endif
endfor
lcount=[countA countB countC countD countF];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra por Escalas Totales
maxescala=round(max(lcount)+1);
h=figure('Position',[1 1 1366 704], ...
'Name','Gráficos de Columna para Cuestionario del Satisfación');
h= bar(1:length(lcount),diag(lcount),"stacked");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% para los sectores circulares son los hp impares {1,3,5,...}
% jet, cubehelix, hsv, rainbow, hot, cool, spring,
% summer, autumn, winter, gray, bone, copper, pink, ocean,
% colorcube, flag, lines, prism, white
nelementos=64;
%matrizcolor=colormap(jet(nelementos));
matrizcolor=colormap(cubehelix(nelementos));
%matrizcolor=colormap(hsv(nelementos));
%matrizcolor=colormap(rainbow(nelementos));
%matrizcolor=colormap(hot(nelementos));
%matrizcolor=colormap(cool(nelementos));
%matrizcolor=colormap(spring(nelementos));
%matrizcolor=colormap(summer(nelementos));
%matrizcolor=colormap(autumn(nelementos));
%matrizcolor=colormap(winter(nelementos));
%matrizcolor=colormap(gray(nelementos));
%matrizcolor=colormap(bone(nelementos));
%matrizcolor=colormap(copper(nelementos));
%matrizcolor=colormap(ocean(nelementos));
for i=1:5
set(h(i),"facecolor",matrizcolor(i*10,:))
endfor
grid on;
%lescala={'Excelente','Bueno','Regular','Deficiente','Pésimo'};
xlabel('Escala de Valoración de Puntuaciones','fontsize',fs2,'fontweight','bold');
ylabel('Cantidad de Estudiantes','fontsize',fs2,'fontweight','bold');
title('Distribución de Puntuaciones','fontsize',fs,'fontweight','bold');
grid on;
set(gca,'YTick',0:5:maxescala)
set(gca,'XTick',1:1:5)
set(gca,'XTickLabel',lescala,'fontsize',fs4,'fontweight','bold');
axis([0 6 0 maxescala])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lescala={'A','A-','B+','B','B-','C+','C','C-','D+','D','D-','F'};
countA=0; countAn=0; countBp=0;countB=0; countBn=0;
countCp=0; countC=0; countCn=0;countDp=0; countD=0;
countDn=0; countF=0;
for i=1:length(data)
if(data(i)>=94 && data(i)<=100);
countA=countA+1;
endif
if(data(i)>=90 && data(i)<94);
countAn=countAn+1;
endif
if(data(i)>=87 && data(i)<90);
countBp=countBp+1;
endif
if(data(i)>=84 && data(i)<87);
countB=countB+1;
endif
if(data(i)>=80 && data(i)<84);
countBn=countBn+1;
endif
if(data(i)>=77 && data(i)<80);
countCp=countCp+1;
endif
if(data(i)>=74 && data(i)<77);
countC=countC+1;
endif
if(data(i)>=70 && data(i)<74);
countCn=countCn+1;
endif
if(data(i)>=67 && data(i)<70);
countDp=countDp+1;
endif
if(data(i)>=64 && data(i)<67);
countD=countD+1;
endif
if(data(i)>=60 && data(i)<64);
countDn=countDn+1;
endif
if(data(i)>=0 && data(i)<60);
countF=countF+1;
endif
endfor
lcount=[countA countAn countBp countB countBn ...
countCp countC countCn countDp countD countDn countF];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grafico de Barra por Escalas Totales
maxescala=round(max(lcount)+1);
h=figure('Position',[1 1 1366 704], ...
'Name','Gráficos de Columna para Cuestionario del Satisfación');
h= bar(1:length(lcount),diag(lcount),"stacked");
for i=1:12
set(h(i),"facecolor",matrizcolor(i*5,:))
endfor
grid on;
%lescala={'Excelente','Bueno','Regular','Deficiente','Pésimo'};
xlabel('Escala de Valoración de Puntuaciones','fontsize',fs2,'fontweight','bold');
ylabel('Cantidad de Estudiantes','fontsize',fs2,'fontweight','bold');
title('Distribución de Puntuaciones','fontsize',fs,'fontweight','bold');
grid on;
set(gca,'YTick',0:5:maxescala)
set(gca,'XTick',1:1:length(lcount))
set(gca,'XTickLabel',lescala,'fontsize',fs4,'fontweight','bold','interpreter','tex');
axis([0 length(lcount)+1 0 maxescala])