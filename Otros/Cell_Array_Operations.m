%Cell Array Operations
clear all; close all; clc;
ca1=char({"red", "green", "", "blue"})
ca2=char([97, 98, 99], "", {"98", "99", 100}, "str1", ["ha", "lf"])
ca3=strcat({"abc","ghi"},{"def","jkl"})
ca4=strncmp("abce", {"abcd", "bca", "abc"}, 3)
ca5=strfind({"abababa", "bebebe", "ab"}, "aba")
ca6=strjoin({'Octave','Scilab','Lush','Yorick'}, '*')
ca7=strsplit("a b c")
ca8=strsplit("a,b,c", ",")
ca9=strsplit("a foo b,bar c", {" ", ",", "foo", "bar"})
ca10=strsplit ("a,,b, c", {",", " "}, "collapsedelimiters", false)
ca11=ostrsplit ("a,b,c", ",")
ca12=ostrsplit (["a,b" ; "cde"], ",")
s = { "ab"; "cd " };
strcat(s, s, s)
%Structure Arrays
x(1).a = "string1";
x(2).a = "string2";
x(1).b = 1;
x(2).b = 2;
ca13=x
ca14=x(1)
ca15=x.a
[x.a] = deal ("new string1", "new string2");
x(1).a
x(2).a
x(3:4) = x(1:2);
[x([1,3]).a] = deal("other string1", "other string2");
x.a
size(x)
in = struct("call1", {x, Inf, "last"},"call2", {x, Inf, "first"})
in(1) = [];
in.call1
%%%%%%%%%%%%%%%%%%%%%%%%
%a = "field2";
%x.a = 1;
%x.(a) = 2;
%x
%a = "long field with spaces (and funny char$)";
%x.a = 1;
%x.(a) = 2;
%x
%%%%%%%%%%%%%%%%%%%%%%%%
printf ("%s", program_name ());
arg_list = argv();
for i = 1:nargin
  printf(" %s", arg_list{i});
endfor
printf("\n");
%%%%%%%%%%%%%%%%%%%%%%%%

names = ["Bill"; "Mary"; "John"];
ages  = [37; 26; 31];
for i = 1:rows(names)
  database.(names(i,:)) = ages(i);
endfor
database
%%%%%%%%%%%%%%%%%%%%%%%%%
struct("field1", 1, "field2", 2)
s = struct("field1", {1, "one"}, "field2", {2, "two"},"field3", 3);
s.field1
s.field2
s.field3
struct ("field1", {{1, "one"}}, "field2", 2)
%%%%%%%%%%%%%%%%%%%%%%%%%%
s = struct("d", 4, "b", 2, "a", 1, "c", 3);
t1 = orderfields(s)
t = struct ("d", {}, "c", {}, "b", {}, "a", {});
t2 = orderfields (s, t)
t3 = orderfields (s, [3, 2, 4, 1])
[t4, p] = orderfields (s, {"d", "c", "b", "a"})
%%%%%%%%%%%%%%%%%%%%%%%%%%
s = struct("name", {"Peter", "Hannah", "Robert"},"age", {23, 16, 3});
c = struct2cell(s)
c(1,1,:)(:)
c(2,1,:)(:)
%%%%%%%%%%%%%%%%%%%%%%%%%%
%s.Name = "Peter";
%s.Height = 185;
%s.Age = 42;
#c = namedargs2cell(s)
%%%%%%%%%%%%%%%%%%%%%%%%%%
c = {"a string", rand(2, 2)};
c{1}
c{1:2}
c{3} = 3
%%%%%%%%%%%%%%%%%%%%%%%%%%
c = {1, 2, {31, 32}};
celldisp(c, "b")
iscell(c)
iscell(3)
%%%%%%%%%%%%%%%%%%%%%%%%%%
c = cell(2,2)
c1 = cell(3, 4, 5);
c2 = cell([3, 4, 5]);
size(c1)
%%%%%%%%%%%%%%%%%%%%%%%%%%
x = [1,2;3,4]
## each element of A becomes a 1x1 element of C
num2cell(x)
## all rows (dim 1) of A appear in each element of C
num2cell(x,1)
## all columns (dim 2) of A appear in each element of C
num2cell(x,2)
## all rows and cols appear in each element of C## (hence, only 1 output)
num2cell(x,[1, 2])
%%%%%%%%%%%%%%%%%%%%%%%%%%
x = reshape(1:12, [3, 4])'
## The 4 rows (dim1) are divided in to two cell elements
## with 2 rows each.
## The 3 cols (dim2) are divided in to three cell elements
## with 1 col each.
mat2cell(x, [2,2], [1,1,1])
## The 4 rows (dim1) are divided in to two cell elements
## with a 3/1 split.
## All columns appear in each output element.
mat2cell (x, [3,1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%
c = {"1", "2", "3"; "x", "y", "z"; "4", "5", "6"};
c{2,3}
c(2,3)
c(:, [1, 3]) = {0}
c = {1, 2, 3; 4, 5, 6};
c([1, 2], :) = c([2, 1], :)
[c{[1,2], :}] = deal(c{[2, 1], :})
x = {"1", "2"; "3", "4"};
x(1, :) = []
x = {"1", "2"; "3", "4"};
x(1, :) = {[]}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
a = ["hello"; "world"];
c = cellstr(a)
c = {"hello", "world"};
strcmp ("hello", c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = cell2struct({"Peter", "Hannah", "Robert";185, 170, 168},{"Name","Height"}, 1);
A(1)
a = {1, [2, 3], 4, 5, 6};
b = [a{1:4}]
a = {1, rand(2, 2), "three"};
b = { a{ [1, 3] } }
%%%%%%%%%%%%%%%%%%%%%%%%%%%
c = {"GNU", "Octave", "is", "Free", "Software"};
printf("%s ", c{1}, c{2}, c{3}, c{4}, c{5});
printf("%s ", c{:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%
in={};
in{1} = [10, 20, 30];
in{2} = inf;
in{3} = "last";
in{4} = "first";
out = cell (4, 1);
[out{1:3}] = in{1 : 3};
[out{4:6}] = in{[1, 2, 4]}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = ceil(randn (10, 1));
in = struct("call1", {x, 3, "last"},"call2", {x, inf, "first"});
out = struct("call1", cell (2, 1), "call2", cell (2, 1));
[out.call1] = find(in.call1);
[out.call2] = find(in.call2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i = {1,"two";"three",4}
 i
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function varargout = one_to_n()
for i = 1:nargout
  varargout{i} = i;
  endfor
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function print_arguments(varargin)
  for i = 1:length(varargin)
   printf ("Input argument %d: ", i);
  disp(varargin{i});
endfor
endfunction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%xlabel ('{\bf H} = a {\bf V}')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
##y = resize(x, dv)
##%is equivalent to the following code:
##y = zeros(dv, class (x));
##sz = min(dv, size (x));
##for i = 1:length(sz)
##  idx{i} = 1:sz(i);
##endfor
##y(idx{:}) = x(idx{:});
%%%%%%%%%%%%%%%%%%%%%%%%%%
cellfun("atan2", {1, 0}, {0, 1})
%%%%%%%%%%%%%%%%%%%%%%%%%%
function [a, b] = twoouts(x)
  a = x;b = x*x;
endfunction
[aa, bb] = cellfun(@twoouts,{1, 2, 3})
%%%%%%%%%%%%%%%%%%%%%%%%%%
cellfun("tolower", {"Foo", "Bar", "FooBar"},"UniformOutput", false)
%%%%%%%%%%%%%%%%%%%%%%%%%%
a = zeros (1000); # create a 1000x1000 matrix
b = a(:,10:100);  # lazy slice
a = []; # the original "a" array is still allocated
c{1} = b; # b is reallocated at this point
%%%%%%%%%%%%%%%%%%%%%%%%%%
Cheese = {"Cheddar", "Swiss", "Camembert", ...
"Munster", "Stilton", "Blue"};
Sold = [105, 30, 70, 10, 15, 20];
pareto(Sold, Cheese);
%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
text (0.5, 0.8, {"Line 1", "Line 2"})
text ([0.4, 0.4], [0.8, 0.6], {"Point 1 Text", "Point 2 text"})
text ([0.6, 0.6], [0.8, 0.6], {{"Point 1 Line 1", "Point 1 Line 2"},"Point 2 text"})
gtext({"I clicked here"; "and there"})
gtext({"I clicked", "here"; "and", "there"})
%%%%%%%%%%%%%%%%%%%%%%%%%%
my_options = {"An item", "another", "yet another"};
[sel, ok] = listdlg("ListString", my_options,"SelectionMode", "Multiple");
if(ok == 1)
disp("You selected:");
for i = 1:numel(sel)
  disp(sprintf ("\t%s", my_options{sel(i)}));
endfor
else
disp("You cancelled.");
endif
%%%%%%%%%%%%%%%%%%%%%%%%%%%
prompt = {"Width", "Height", "Depth"};
defaults = {"1.10", "2.20", "3.30"};
rowscols = [1,10; 2,20; 3,30];
dims = inputdlg (prompt, "Enter Box Dimensions", ...
rowscols, defaults);
%%%%%%%%%%%%%%%%%%%%%%%%%%%
gmtime(time ())
[info, err, msg] = stat("/vmlinuz")
uname()
%%%%%%%%%%%%%%%%%%%%%%%%%%%
arrayfun (@(x,y) x:y, "abc", "def", "UniformOutput", false)
[A, B, C] = arrayfun (@find, [10; 0], "UniformOutput", false)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[b1, b2, b3] = celldemo({1, [1, 2], "test"})