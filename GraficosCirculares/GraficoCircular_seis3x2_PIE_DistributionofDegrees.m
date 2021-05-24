clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name','Seis Gráfico Circular en forma de 3x2 -Distribution of Degrees By Sex');
ha1=annotation ("textbox", [0.1 0 0.85 0.99], "string", ...
             {'Distribution of Degrees', ...
             'By Sex, 1940 and 1964', ...
             'Per Cent Distribution'}, ...
             "fontsize", fs3, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
ha2=annotation("textbox", [0.1 0 0.85 0.83], "string", ...
             {'Bachelor''s and', ...
             'First Professional'}, ...
             "fontsize", fs3, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
ha3=annotation ("textbox", [0.1 0 0.85 0.51], "string", ...
             {'Master''s', ...
             ''}, ...
             "fontsize", fs3, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
ha4=annotation ("textbox", [0.1 0 0.85 0.21], "string", ...
             {'Ph. D.''s', ...
             ''}, ...
             "fontsize", fs3, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center",'linestyle','none','linewidth',0.1);
Ldata={"Female","Male"};
subplot(3,2,1)
data1=[0.413,1-0.413];
hp1=pie(data1);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title({"1940","186,500=100%"},'fontsize',fs3);
for i=2:2:size(hp1,1)
set(hp1(i),'string',strcat(Ldata(i/2),"\n",num2str(100*data1(i/2)),"%"))
set(hp1(i),'fontsize',15,'fontweight','bold',"horizontalalignment","center");
set(hp1(i),'margin',3,"verticalalignment","middle");
dvertices=get(hp1(i-1),"vertices");
set(hp1(i-1),"vertices",1.41*dvertices)
dxdata=get(hp1(i-1),"xdata");
set(hp1(i-1),"xdata",1.41*dxdata)
dydata=get(hp1(i-1),"ydata");
set(hp1(i-1),"ydata",1.41*dydata)
endfor

%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,2)
data2=[0.403,1-0.403];
hp2=pie(data2);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title({"1964","502,104=100%"},'fontsize',fs3);
for i=2:2:size(hp2,1)
set(hp2(i),'string',strcat(Ldata(i/2),"\n",num2str(100*data2(i/2)),"%"))
set(hp2(i),'fontsize',15,'fontweight','bold',"horizontalalignment","center");
dvertices=get(hp2(i-1),"vertices");
set(hp2(i-1),"vertices",1.41*dvertices)
dxdata=get(hp2(i-1),"xdata");
set(hp2(i-1),"xdata",1.41*dxdata)
dydata=get(hp2(i-1),"ydata");
set(hp2(i-1),"ydata",1.41*dydata)
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,3)
data3=[0.382,1-0.382];
hp3=pie(data3);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title({"","26,731=100%"},'fontsize',fs3);
for i=2:2:size(hp3,1)
set(hp3(i),'string',strcat(Ldata(i/2),"\n",num2str(100*data3(i/2)),"%"))
set(hp3(i),'fontsize',15,'fontweight','bold',"horizontalalignment","center");
dvertices=get(hp3(i-1),"vertices");
set(hp3(i-1),"vertices",1.41*dvertices)
dxdata=get(hp3(i-1),"xdata");
set(hp3(i-1),"xdata",1.41*dxdata)
dydata=get(hp3(i-1),"ydata");
set(hp3(i-1),"ydata",1.41*dydata)
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,4)
data4=[0.318,1-0.318];
hp4=pie(data4);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title({"","101,122=100%"},'fontsize',fs3);
for i=2:2:size(hp4,1)
set(hp4(i),'string',strcat(Ldata(i/2),"\n",num2str(100*data4(i/2)),"%"))
set(hp4(i),'fontsize',15,'fontweight','bold',"horizontalalignment","center");
set(hp4(i),"verticalalignment","middle");
dvertices=get(hp4(i-1),"vertices");
set(hp4(i-1),"vertices",1.41*dvertices)
dxdata=get(hp4(i-1),"xdata");
set(hp4(i-1),"xdata",1.41*dxdata)
dydata=get(hp4(i-1),"ydata");
set(hp4(i-1),"ydata",1.41*dydata)
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,5)
data5=[0.130,1-0.130];
hp5=pie(data5);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title({"","3,290=100%"},'fontsize',fs3);
for i=2:2:size(hp5,1)
set(hp5(i),'string',strcat(Ldata(i/2),"\n",num2str(100*data5(i/2)),"%"))
set(hp5(i),'fontsize',15,'fontweight','bold',"horizontalalignment","center");
dvertices=get(hp5(i-1),"vertices");
set(hp5(i-1),"vertices",1.41*dvertices)
dxdata=get(hp5(i-1),"xdata");
set(hp5(i-1),"xdata",1.41*dxdata)
dydata=get(hp5(i-1),"ydata");
set(hp5(i-1),"ydata",1.41*dydata)
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(3,2,6)
data6=[0.106,1-0.106];
hp6=pie(data6);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title({"","14,490=100%"},'fontsize',fs3);
for i=2:2:size(hp6,1)
set(hp6(i),'string',strcat(Ldata(i/2),"\n",num2str(100*data6(i/2)),"%"))
set(hp6(i),'fontsize',15,'fontweight','bold',"horizontalalignment","center");
dvertices=get(hp6(i-1),"vertices");
set(hp6(i-1),"vertices",1.4*dvertices)
dxdata=get(hp6(i-1),"xdata");
set(hp6(i-1),"xdata",1.4*dxdata)
dydata=get(hp6(i-1),"ydata");
set(hp6(i-1),"ydata",1.4*dydata)
endfor