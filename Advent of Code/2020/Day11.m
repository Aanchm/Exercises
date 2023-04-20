clear all
y = cell2mat(table2array(readtable('C:\Users\Aanchal Mittal\Documents\Coding\day11.txt','ReadVariableNames',false)));


[m, n] = size(y);
a = char(zeros(m,n));
rule1 = 1;
rule2 = 0;
same = 0;
count = 0;
times = 0;

while same == 0
    for i = 1:m
        for j = 1:n
            
            if y(i,j) == '.'
                a(i,j) = '.';
            end
            
            if y(i,j) == 'L'
                for horiz = -1:1
                    for vert = -1:1
                        mul = 1;
                        while mul>0
                            if i+(horiz*mul) >= 1 && j + (vert*mul) >= 1 && i+(horiz*mul) <= m && j + (vert*mul) <= n
                                if y(i+(horiz*mul),j+(vert*mul)) == '.'
                                    mul = mul+1;
                                end
                                if i+(horiz*mul) >= 1 && j + (vert*mul) >= 1 && i+(horiz*mul) <= m && j + (vert*mul) <= n
                                    if y(i+(horiz*mul),j+(vert*mul)) == 'L'
                                        rule1 = rule1;
                                        mul = 0;
                                    elseif y(i+(horiz*mul),j+(vert*mul)) == '#'
                                        rule1 = rule1*0;
                                        mul = 0;
                                    end
                                end
                            else
                                mul = 0;
                            end
                        end
                    end
                end
                if rule1 == 1
                    a(i,j) = '#';
                end
                rule1 = 1;
                
                
            elseif y(i,j) == '#'
                for horiz = -1:1
                    for vert = -1:1
                        mul = 1;
                        while mul>0
                            if i+(horiz*mul) >= 1 && j + (vert*mul) >= 1 && i+(horiz*mul) <= m && j + (vert*mul) <= n
                                if y(i+(horiz*mul),j+(vert*mul)) == '.'
                                    mul = mul+1;
                                end
                                if i+(horiz*mul) >= 1 && j + (vert*mul) >= 1 && i+(horiz*mul) <= m && j + (vert*mul) <= n
                                    if y(i+(horiz*mul),j+(vert*mul)) == '#'
                                        rule2 = rule2+1;
                                        mul = 0;
                                    elseif y(i+(horiz*mul),j+(vert*mul)) == 'L'
                                        mul = 0;
                                    end
                                end
                            else
                                mul = 0;
                            end
                        end
                    end
                end
                if rule2 -1 >= 5
                    a(i,j) = 'L';
                else
                    a(i,j) = '#';
                end
                rule2 = 0;
            end
            
        end
    end
    if y == a
        same = 1;
    else
        y = a;
    end
end

for i = 1:m
    for j = 1:n
        if a(i,j) == '#'
            count = count+1;
        end
    end
end

a
count

