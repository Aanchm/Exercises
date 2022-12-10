clear all

default = fileread('C:\Users\Aanchal Mittal\Documents\Coding\day6.txt');
default = regexp(default,'\n','split');

x = string(cell2mat(default));
x = splitlines(x);
i = 1;

while i ~= length(x)
    if x(i+1) ~= "" && x(i) ~= ""
         x(i) = strcat(x(i), x(i+1));
         i;
         x(i+1,:) = [];
    else if x(i+1) == "" && x(i) ~= "" && i ~=1;
         x(i-1) = strcat(x(i-1), x(i));
         i;
         x(i,:) = []  ;
    end
    i = i + 1;
    end
end

y= 0;
for i = 1:length(x)
    y = length(unique(split(x(i),"")))-1 + y;
end

y

