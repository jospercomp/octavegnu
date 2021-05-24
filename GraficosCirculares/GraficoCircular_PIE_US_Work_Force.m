clear all; close all; clc;
fs=24; fs2=22;
fs3=18; fs4=18;
lw=5; ms=25;
h=figure('Position',[1 21 1366 670], ...
'Name','Gráfico Circular - U.S. Work Force');
annotation ("textbox", [0.1 0 0.85 0.97], "string", ...
             'U.S. Work Force', ...
             "fontsize", 30, 'fontweight','bold',"edgecolor", [1 1 1], ...
             "fitboxtotext", "off", "verticalalignment", "top", ...
             "horizontalalignment", "center");
subplot(1,2,1)
data1=[1-0.315,0.315];
hp1=pie(data1);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title("1950 Total: 45,222,000",'fontsize',fs);
for i=2:2:size(hp1,1)
set(hp1(i),'string',strcat(num2str(100*data1(i/2)),"%"))
set(hp1(i),'fontsize',15,'fontweight','bold');
endfor
annotation ("textarrow", [0.42 0.33 ], [0.5 0.57 ], ...
            "string", {"Union Membership","14,267,000"}, "fontsize", 15, ...
            'fontweight','bold',"headstyle","plain", "textcolor", "k", ...
            "horizontalalignment","center");
%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
data2=[1-0.289,0.289];
hp2=pie(data2);
colormap([1,0,0;0,1,0]);
axis([-2,2,-2,2]);
title("1965 Total: 58,188,000",'fontsize',fs);
for i=2:2:size(hp2,1)
set(hp2(i),'string',strcat(num2str(100*data2(i/2)),"%"))
set(hp2(i),'fontsize',15,'fontweight','bold');
endfor
annotation ("textarrow", [0.87 0.78 ], [0.5 0.57], ...
            "string", {"Union Membership","16,841,000"}, "fontsize", 15, ...
            'fontweight','bold',"headstyle","plain", "textcolor", "k", ...
            "horizontalalignment","center");