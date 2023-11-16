alpha = 10
lambda = 5
x = 2
gamma = (lambda^alpha*x^(alpha-1)*exp(-lambda*x))/(gamma(alpha))
range = seq(0,1.5,by=0.01)

qgamma(0.05,10,5)
qgamma(0.05,1000,0.5/(1/1000))
