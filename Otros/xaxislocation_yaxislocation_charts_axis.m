%xaxislocation & yaxislocation charts 
%and reverse both x and y axis in Octave
close all; clear all; clc;
figure("name",upper('xaxislocation & yaxislocation charts'), ...
 "position",[34 118 560 420])
%%%%%%%%%%%%%%%%%
subplot(1,2,1)
x=-10:0.1:10;
y=sin(x)./(1+abs(x))+0.1*x-0.4;
plot(x,y);
title("no plot box");
set(gca,"xaxislocation","bottom");
set(gca,"yaxislocation","right");
box off;
title({"no plot box","xaxislocation=bottom,yaxislocation=right"});
set(gca(),"xdir","reverse")
%set(gca(),"ydir","reverse")
%%%%%%%%%%%%%%%%%%
subplot(1,2,2)
x=-10:0.1:10;
y=sin(x)./(1+abs(x))+0.1*x-0.4;
plot(x,y);
set(gca,"xaxislocation","bottom");
set(gca,"yaxislocation","left");
box off;
title({"no plot box","xaxislocation=bottom,yaxislocation=left"});