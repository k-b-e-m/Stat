%Symbols to integrate over
syms x;
syms p;

% Define the function to be integrated
%f = 

% Integrate from 0 to infinity symbolically
%result = int(f, 0, Inf);
result = int(2*x/(x+1)^3,1,x)
% Display the result
disp(result);