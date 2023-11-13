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