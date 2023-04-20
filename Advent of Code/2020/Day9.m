clear all

y = table2array(readtable('C:\Users\Aanchal Mittal\Documents\Coding\day9.txt'));

number = 25;
i = number+1;
k = 1;
j = i-number;

while i <= length(y)
    while j <=i-1
        while k <=i-j-1
            if y(j)+y(j+k) == y(i)
               k=i;
               j=i;
            end
            k =k+1;
        end
        if j == i - 2 && k == 2
            result = i;
        end
        k = 1;
        j=j+1;
    end
    i = i+1;
    j=i-number;
end

clear i j k

x = y(result)



for i = 1:length(y)
    count = y(i);
    for j = 1:length(y)-i
        count = count+(y(i+j));
        if count == x
            a = i;
            b = j+i;
        end   
    end 
end

range = y(a:b);

weakness = min(range) + max(range)



