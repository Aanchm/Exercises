clear all 

y = table2array(readtable('C:\Users\Aanchal Mittal\Documents\Coding\day10.txt'));
a = length(y) ;
y(a+1) = 0;
y = sort(y);
y(a+2) = y(a+1)+3;

count = 0;
total = 1; 
i = 1;

f(1) = 0;
f(2) = 1;
n = 33;

for j = 3:n
   f(j) = f(j-1)+f(j-2);
end

while i < length(y)
    
    while y(i+1)-y(i)==1 
            count = count + 1;
            i = i + 1;
    end
        
    if count >=2
        total = total * (2^(count-2) + f(count+1));
        count = 0 ;
    else 
        count = 0 ;
    end
    i = i+1;
end 

total
    
    
