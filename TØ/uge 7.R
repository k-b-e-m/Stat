N = 100000
Lambda = 2;
Samples = rexp(N,rate = Lambda)
gY= sin(Samples)
mean(gY)
range = 1:N
plot(range,gY)
