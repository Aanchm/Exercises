clear all
fid=fopen('day3.txt');
A = textscan(fid,'%s');
A = char(A{1});
[m,n]=size(A);


j = 1;
count1 = 0;

%Slope of 3 1
for i = 2:m
    j = j+3
    
    if j > n
        j = (j-n);
    end

    if A(i,j) == '#'
        count1 = count1 + 1;
    end
end

%slope 1 1
j = 1;
count2 = 0;

for i = 2:m
    j = j+1;
    
    if j > n
        j = (j-n);
    end

    if A(i,j) == '#'
        count2 = count2 + 1;
    end
end

%slope 5 1
j = 1;
count3 = 0;

for i = 2:m
    j = j+5;
    
    if j > n
        j = (j-n);
    end

    if A(i,j) == '#'
        count3 = count3 + 1;
    end
end

%slope 7 1
j = 1;
count4 = 0;

for i = 2:m
    j = j+7;;
    
    if j > n
        j = (j-n);
    end

    if A(i,j) == '#'
        count4 = count4 + 1;
    end
end

%slope 1 2
j = 1;
count5 = 0;

for i = 3:2:m
    j = j+1;
    
    if j > n
        j = (j-n);
    end

    if A(i,j) == '#'
        count5 = count5 + 1;
    end
end

x=count1*count2*count3*count4*count5;
disp(x)

        