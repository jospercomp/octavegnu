clear all; close all; clc;
## Create figure and place a table on it
f = figure ();
m = magic (8);
t = uitable (f, "Data", m, "ColumnWidth", { 40 });

## Create a table with labeled rows and columns
f = figure ();
d = reshape (1:9, [3, 3]);
row_names = { "Row1", "Row2", "Row3" };
col_names = { "Col1", "Col2", "Col3" };
t = uitable (f, "Data", d, ...
             "RowName", row_names, "ColumnName", col_names);