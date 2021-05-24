clear all; close all; clc;
h=figure('Position',[1 21 1366 670], ...
'Name','refreshdata Command Demonstrations');
x=0:0.1:10;
y=sin(x);
y2=cos(x);
subplot(2,1,1)
plot(x,y,"ydatasource","y");
title("refreshdata() showing moving sine curve",... 
 'fontsize',20);
xlabel('x','fontweight','bold','fontsize',20)
ylabel('sin(x)','fontweight','bold','fontsize',20)
axis manual;
subplot(2,1,2)
plot(x,y2,"ydatasource","y2");
title("refreshdata() showing moving cosine curve",... 
 'fontsize',20);
xlabel('x','fontweight','bold','fontsize',20)
ylabel('cos(x)','fontweight','bold','fontsize',20)
axis manual;
n=length(x);
i=1;
while i <= (n+100)
pause(0.05);
if(i<=n)
y=sin(x(1:i));
y2=cos(x(1:i));
else
y=sin(x+0.1*(i-n));
y2=cos(x+0.1*(i-n));
endif
refreshdata(gcf,"caller");
i=i+1;
endwhile