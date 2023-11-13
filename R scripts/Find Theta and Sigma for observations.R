## Kendt simga ikke normalfordelt
#Varians
S2 = 81
#Sigma
S = sqrt(81)
#antal observationer
N = 100
#Alpha
alpha = 0.05
#Mean variane
barX = 50.1
## 1-p fraktilen
zp = qnorm(Alpha/2,n-1)-

##Lower
lower = barX -zp*(S/sqrt(N))
##Higher
higher = barX + zp*(S/sqrt(N))
