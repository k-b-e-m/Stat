##Kendt sigma og sample mean
sampleMean = 2
varians = 1/(5*5)
sigma = sqrt(varians)
n = 10
alpha = 0.05
zp = qnorm(0.05/2)
higher = sampleMean - zp * (sigma/sqrt(n))
lower = sampleMean + zp * (sigma/sqrt(n))




## Kendt simga ikke normalfordelt
#Varians
S2 = 81
#Sigma
S = sqrt(81)
#antal observationer
n = 100
#Alpha
alpha = 0.05
#Mean variane
barX = 50.1
## 1-p fraktilen
zp = qnorm(alpha/2)

##Lower
higher = barX -zp*(S/sqrt(N))
##Higher
lower = barX + zp*(S/sqrt(N))


## Known sample mean and sample variance

barX = 110.5
SampleVariance = 45.6
SampleS = sqrt(SampleVariance)
n = 100
alpha = 0.05
zp = qnorm(alpha/2)

##Lower
higher = barX -zp*(SampleS/sqrt(n))
##Higher
lower = barX + zp*(SampleS/sqrt(n))

#Find the mean with unkown mean and variance normal distribution
  alpha = 0.1
  sampleMean = 35.8
  S2 = 12.5
  S = sqrt(12.5)
  n = 36
  qt = qt(alpha/2,n-1)
  lower = sampleMean -(qt *(S/sqrt(n)))
  higher = sampleMean +( qt*(S/sqrt(n)))

## normaldistribution for ukendt mean og variance men kendt sample mean og sample variance find varians
n = 36
S2 = 12.5
alpha = 0.1
chiHigher = qchisq(alpha/2, n-1)
chiLower = qchisq(1-alpha/2, n-1)
lower = (1 - n) * S2 /(chiLower)
higher = (1 - n) * S2 /(chiHigher)


qgamma(0.5,10)/10
qgamma(0.5,1000)/1000
qgamma(0.5,10)
0.5^10
solve(P(0.9668<=c)<=0.05,c)

library(stats)
# Set smaller plot margins
par(mar = c(1, 1, 1, 1) + 0.1)
w = function(x){(qgamma(0.5,x))/(x)}


joint <- function(x){
  temp <- (exp(-0.5)*(0.5^2))/(factorial(9))
  temp2 <- (0.5*x^9*exp(x))/factorial(9)
  return(temp * temp2)}
range <- seq(0,10,by = 0.01)
plotvalues <- sapply(x,joint)
plot(plotvalues,range,b)

cat("done")