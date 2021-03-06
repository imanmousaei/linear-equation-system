%% clear everything
clc
clear
close all


%% problem description
% using gaus-seidel iterative method to solve system of linear equations : 
% for i=1:n 
%   sigma(a[i][j]*x[j], j=1:n) = b[i]


%% init vars
% n = 2;
% maxValue = 100;
% precision = 1e-2;
% omega = 1/2;
% 
% for i=1:n
%     b(i) = rand*maxValue;
%     for j=1:n
%         a(i,j) = rand*maxValue;
%     end
% end


%% input vars
n = input('n = ');
precision = input('precision = ');
omega = input('omega = ');
for i=1:n
    for j=1:n
        a(i,j) = input( strcat('a[', num2str(i), '][', num2str(j), '] = ') );
    end
end

for i=1:n
    b(i) = input( strcat('b[', num2str(i), '] = ') );
end

a
b


%% solve with jacobi method
x = gaus_seidel(a,b,precision);
x


%% solve with gaus-seidel method
x = gaus_seidel(a,b,precision);
x


%% solve with SOR method
x = sor(a,b,omega,precision);
x


