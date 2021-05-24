clear all; close all; clc;
ncolor=30; opc=1; opc2=1;
ncolor=64; opc=16; opc2=1;
switch(mod(opc,19))
case 1
Mcolor=jet(ncolor)
case 2
Mcolor=cubehelix(ncolor)
case 3
Mcolor=hsv(ncolor)
case 4
Mcolor=rainbow(ncolor)
case 5
Mcolor=hot(ncolor)
case 6
Mcolor=cool(ncolor)
case 7
Mcolor=spring(ncolor)
case 8
Mcolor=summer(ncolor)
case 9
Mcolor=autumn(ncolor)
case 10
Mcolor=winter(ncolor)
case 11
Mcolor=gray(ncolor)
case 12
Mcolor=bone(ncolor)
case 13
Mcolor=copper(ncolor)
case 14
Mcolor=pink(ncolor)
case 15
Mcolor=ocean(ncolor)
case 16
Mcolor=colorcube(ncolor);
case 17
Mcolor=flag(ncolor)
case 18
Mcolor=lines(ncolor)
case 0
Mcolor=prism(ncolor)
otherwise
endswitch
row=size(Mcolor,1);
col=size(Mcolor,2);
Lcolor="{";
for i=1:row
Lcolor=strcat(Lcolor,"{");
for j=1:col
if(j<col)
switch mod(opc2,2)+1
case 1
Lcolor=strcat(Lcolor,num2str(Mcolor(i,j)),",");
case 2
Lcolor=strcat(Lcolor,num2str(round(Mcolor(i,j)*255)),",");
endswitch
else
switch mod(opc2,2)+1
case 1
Lcolor=strcat(Lcolor,num2str(Mcolor(i,j)),"}");
case 2
Lcolor=strcat(Lcolor,num2str(round(Mcolor(i,j)*255)),"}");
endswitch
endif
endfor
if(i<row)
Lcolor=strcat(Lcolor,",");
endif
endfor
Lcolor=strcat(Lcolor,"}")
opc 
opc2
