clear all
opts = delimitedTextImportOptions("NumVariables", 10);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = [" ", ":"];

% Specify file level properties
opts.ImportErrorRule = "error";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
A = readtable("C:\Users\Aanchal Mittal\Documents\Coding\day4.txt", opts);

clear opts

A = string(table2array(A));
[m,n] = size(A);
B = transpose(ones(m, 1))
C = mat2cell(A,B)

C{1}(1,1)

for i = 1:m
    C{i} = reshape(C{i}, 2, [])'
end





