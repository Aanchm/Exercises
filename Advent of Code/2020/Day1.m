clear all

A = table2array(readtable('C:\Users\Aanchal Mittal\Documents\Coding\day1.txt'))


for k = 1:length(A)-2;
    for j = k+1:length(A)-1;
        for i = j+2:length(A);
            if A(j) + A(i) + A(k) == 2020
                x = A(j)*A(i)*A(k);
            end
        end
    end
end
display(x)

