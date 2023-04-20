clear all

opts = delimitedTextImportOptions("NumVariables", 4);

% Specify range and delimiter
opts.DataLines = [1, Inf];
opts.Delimiter = [" ", "-", ":"];

% Specify column names and types
opts.VariableNames = ["VarName1","VarName2", "a", "abcde"];
opts.VariableTypes = ["string", "string", "string", "string"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.ConsecutiveDelimitersRule = "join";

% Import the data
A = readmatrix("C:\Users\Aanchal Mittal\Documents\Coding\day2.txt", opts);

clear opts 
 
count = 0; 


for i = 1: height(A)
    a = char(A(i, 4));
    b = char(A(i, 3));
    c = str2double(A(i, 1));
    d = str2double(A(i, 2));

    if a(c) == b || a(d) == b
        count = count + 1;
    end
     if a(c) == b(1) && a(d) == b(1)
          count = count - 1;
     end
    
end

disp(count)


