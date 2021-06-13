clear all; close all; clc;
%vector vectors
x=randi([0 9],1,4);
y=randi([0 9],1,4);
z=randi([0 9],1,4);
w=randi([0 9],1,4);
%Matriz column (columns<rows)
%vector columns
A=num2cell([x' y' z' w'])
%vector rows
x=randi([0 9],4,1);
y=randi([0 9],4,1);
z=randi([0 9],4,1);
w=randi([0 9],4,1);
%Matriz columns (columns>rows)
%vector columns
B=num2cell([x y z w])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all; close all; clc;
%vector columns
x=randi([0 9],4,1);
y=randi([0 9],4,1);
z=randi([0 9],4,1);
w=randi([0 9],4,1);
%Matriz column (columns<rows)
%vector rows
A=num2cell([x' y' z' w'])
%vector rows
x=randi([0 9],1,4);
y=randi([0 9],1,4);
z=randi([0 9],1,4);
w=randi([0 9],1,4);
%Matriz rows (columns>rows)
%vector rows
B=num2cell([x y z w])
