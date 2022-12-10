clear all

T = readtable('C:\Users\Aanchal Mittal\Documents\Coding\day8.txt');

y = string(cell2mat(table2array(T(:,1))));
z = table2array(T(:,2));
x = zeros(length(y),1);
jmp = ones(length(y),1);

j = 1;
acc = 0;
I=1;
b=0

for i = 1:length(y)
    if y(i) =='nop';
        b=1;
    elseif y(i) == 'jmp';
        b=2;
    end
    
    if b==1
        y(i)='jmp';
    elseif b==2
        y(i)='nop';
    end

    while I == 1
    if y(j) == 'nop'
       x(j) = x(j)+1;
         j=j+1;
    else
        if y(j) == 'acc'
            acc = acc + z(j);
            x(j) = x(j)+1;
              j=j+1;
        else
            x(j) = x(j)+1;
            j=j+z(j);
        end
    end
    I = isempty(string(find(x==2)));
    if j>length(y)
        I=0;
        answer = acc;
    end
    end
    
    if y(i) =='nop'
        b=1;
    elseif y(i) == 'jmp'
        b=2;
    end
    
    if b==1
        y(i)='jmp';
    elseif b==2
        y(i)='nop';
    end
    j=1;
    I=1;
    acc=0;
    b=0;
    x = zeros(length(y),1);
    
end

answer




    
    
