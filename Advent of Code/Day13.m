clear all

fid=fopen('C:\Users\Aanchal Mittal\Documents\Coding\Advent of Code\day13.txt'); 
A = str2double(string(textscan(fid,'%s',1,'delimiter','\n', 'headerlines',0)));

fid = fopen('C:\Users\Aanchal Mittal\Documents\Coding\Advent of Code\day13.txt','rt');
indata = textscan(fid, '%s', 'HeaderLines',1);
fclose(fid);
B = split(string(indata{1}), ',');
B(B(:,1)=='x' ,:) = [];
B=str2double((B'));


for i = 1:length(B)
    B(2, i) = B(1, i)- mod(A,B(1, i));
end

[minutes, id] = min(B(2,:)); 

answer = B(1,id)*minutes




