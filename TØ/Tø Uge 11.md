![[Tø Uge 11 Problem 11.png]]
Vi får intervallet 
$$
[48.33, 51.86]
$$
Vi har regnet dette ved brug af vores R script:
```R
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
```

___
![[Tø Uge 11 - problem 13.png]]
Igen har jeg brugt mit R script. ved dette har jeg fået intervallet:
$$
[109.17,111.82]
$$
___
![[Tø Uge 11 - problem 14.png]]
b)
 99%
 $$
 [7.25,25.44]
 $$
 95%
$$
 [8.22,21.26]
$$
90%
$$
[8.78,19.47]
$$
a)
99%
$$
[34.19, 37.40]
$$
95%
$$
[34.60,36.99]
$$
90%
$$
[34.80,36.79]
$$
