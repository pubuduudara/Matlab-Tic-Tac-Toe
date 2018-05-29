%Use mat array
global mat;
%define a global variable to identify the winning movement
global stat;
stat= 0;
%check summation of the row matrix t is equal to 0 or 3
t = sum(mat);

%checking rows to check winning
ttr = sum(mat');
for i =1:3
    if t(i)==3 || t(i)==0 || ttr(i)==3 || ttr(i)==0
        stat = 1;
    end
end

%checking main diagonal and secondary diagonal for winning
if trace(mat)==3 || trace(mat) ==0
    stat = 1;
elseif trace(flip(mat))==3 || trace(flip(mat))==0
    stat = 1;
end





