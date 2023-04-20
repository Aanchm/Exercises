y = table2array(readtable('C:\Users\Aanchal Mittal\Documents\Coding\day12.txt', 'ReadVariableNames',false));
y = char(y);
x = y(:,1);
y(:,1) = [];
y = str2double(string(y));

vert = 0;
horiz = 0;
rotation = 0;
wayhoriz = 10;
wayvert = 1;

for i = 1:length(y)
    if x(i) == 'N'
        wayvert = wayvert + y(i);
    elseif x(i) == 'S'
        wayvert = wayvert - y(i);
    elseif x(i) == 'E'
        wayhoriz = wayhoriz + y(i);
    elseif x(i) == 'W'
        wayhoriz = wayhoriz - y(i);
    elseif x(i) == 'R'
        if y(i) == 90
            holder = wayvert;
            wayvert = -wayhoriz;
            wayhoriz = holder;
        elseif y(i) == 180
            wayvert = -wayvert;
            wayhoriz = -wayhoriz;
        else
            holder = wayvert;
            wayvert = wayhoriz;
            wayhoriz = - holder;
        end 
    elseif x(i) == 'L'
        if y(i) == 90
            holder = wayvert;
            wayvert = wayhoriz;
            wayhoriz = -holder;
        elseif y(i) == 180 
            wayvert = - wayvert;
            wayhoriz = - wayhoriz;
        else
            holder = wayvert;
            wayvert = -wayhoriz;
            wayhoriz =  holder;
        end 
    elseif x(i) == 'F'
        horiz = horiz + y(i)*wayhoriz;
        vert = vert + y(i)*wayvert;
    end 
end

Manhattan = abs(vert) + abs(horiz)