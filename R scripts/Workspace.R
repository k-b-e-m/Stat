alpha = 10
lambda = 5
x = 2
gamma = (lambda^alpha*x^(alpha-1)*exp(-lambda*x))/(gamma(alpha))
range = seq(0,1.5,by=0.01)

first = pgamma(range,10,1/2)
second = pgamma(range,10,5)
thrid = pgamma(range,10,1)

first<0.06 && first>0.05
