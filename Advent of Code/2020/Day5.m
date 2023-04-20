clear all

F = 'C:\Users\Aanchal Mittal\Documents\Coding\day5.txt'
FID = fopen(F)
data = textscan(FID,'%s');
fclose(FID);
x = string(data{:});

x = char(x);
[m, n] = size(x);

for i = 1:m
    
    for j = 1:n
        if x(i,j) == "B" || x(i,j) == "R"
            y(i,j) = 1;
        else
            y(i,j) = 0;
        end
    end
    
    A = y(:,1:7);
    B = y(:,8:10);
    r = zeros(m, 1);
    c = zeros(m, 1);
    
    for j = 7:-1:1
        r(i) = (2^(7-j))*A(i, j)+r(i);
    end

    for j = 3:-1:1
        c(i) = (2^(3-j))*B(i, j)+c(i);
    end
    
    id(i) = (r(i)*8)+c(i);
    
end

max(id);
missing = zeros(m, 1);

for i = 1:max(id)
    res(i) = ismember(i,id);
end

res = transpose(res);

find(all(res==0,2))
    
    


    
