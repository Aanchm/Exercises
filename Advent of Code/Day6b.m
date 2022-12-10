clear all

default = fileread('C:\Users\Aanchal Mittal\Documents\Coding\day6.txt');
default = regexp(default,'\n','split');
 
x = splitlines(string(cell2mat(default)));

i = 1;
j = 1;
check = 0; 

while i < length(x)
    y(j,i) = x(i);
    if length(x) == 1
        check = 1;
    end
    if check == 0
        if x(i+1) == "" 
            j = j+1;
            x(1:i+1) = [];
            i = 0 ;
        end
    end
    i = i+1;
end

y = fillmissing(y,'constant',"0");
y = char(y);
[m, n, o] = size(y);
count = 0;

for j = 1:m
    for i = 1:o-1
        if y(j, 1, i+1) ~= '0'
            y(j,:,1) = pad(intersect(y(j,:, 1), y(j,:,i+1)), n);
        end
    end
end

z=strtrim(string(y(:, :, 1)));

for i = 1:length(z)
    count = strlength(z(i))+count;
end

count






