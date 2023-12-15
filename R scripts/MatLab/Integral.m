%Symbols to integrate over
syms x;
syms p;

% Define the function to be integrated
f = exp(2*x) * 3 * exp(-3*x);

% Integrate from 0 to infinity symbolically
%result = int(f, 0, Inf);
result = int(x^2*(3/2*sqrt(x)),0,1)
% Display the result
disp(result);