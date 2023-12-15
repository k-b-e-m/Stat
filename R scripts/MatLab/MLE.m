%MLE
syms sigma
syms x

%Log Likelihood function
func = -0.5*log(2*pi)-log(sigma)-x^2/(2*sigma^2);

deriviative = diff(func,sigma);

MLE = solve(deriviative==0,sigma);


disp(deriviative)
disp(MLE)