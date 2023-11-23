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
  alpha = 0.05
  sampleMean = 684/175
  S2 = 0.2485
  S = 0.67
  n = 7
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

