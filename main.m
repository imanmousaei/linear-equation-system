%% clear everything
clc
clear
close all


%% problem description
% using gaus-seidel iterative method to solve system of linear equations : 
% for i=1:n 
%   sigma(a[i][j]*x[j], j=1:n) = b[i]


%% init vars
n = 2;
maxValue = 1000;

for i=1:n
    b(i) = rand*maxValue;
    for j=1:n
        a(i,j) = rand*maxValue;
    end
end


%% 
a
b

