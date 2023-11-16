![[Tø uge 12 sommer 2019 opgave 6.png]]
a)
Først vil jeg finde sample mean er:
$$
\frac{1.78 + 1.82 + 1.81 + 1.78 + 1.81 + 1.79 + 1.77 + 1.73  + 1.80  +  1.88  +  1.83  +  1.67  +  1.71 +  1.83  +  1.90  +  1.84}{16}
$$
$$
\frac{28.75}{16} =  1.796875
$$
derved er
$$
\bar X = 1.796875
$$
Dette regner vi ud ved:
$$
[\bar X  -  t_{\frac{a}{2},n - 1}\frac{S}{\sqrt{n}} , \bar X  + t_{\frac{a}{2},n - 1}\frac{S}{\sqrt{n}} ]
$$
Her har vi benyttet os af R:
```R
values = c(1.78 , 1.82 , 1.81 , 1.78 , 1.81 , 1.79 , 1.77 , 1.73  , 1.80  ,  1.88  ,  1.83  ,  1.67  ,  1.71 ,  1.83  ,  1.90  ,  1.84)  
S2 = var(values)  
S = sqrt(S2)  
Xbar = mean(values)  
alpha = 0.05  
tfunc = qt(1-alpha/2,length(values)-1)  
sqn= S/sqrt(length(values))  
interval = c(Xbar-tfunc * sqn , Xbar + tfunc * sqn)
```

Med dette får vi 
$[1.7655,1.8282]$
Dette vil sige at vi estimere at gennemnits højden ligge inde for dette interval med 95% sikkerhed.
 b)
 Til dette har vi igen brugt R
 ```R
 values = c(1.78 , 1.82 , 1.81 , 1.78 , 1.81 , 1.79 , 1.77 , 1.73  , 1.80  ,  1.88  ,  1.83  ,  1.67  ,  1.71 ,  1.83  ,  1.90  ,  1.84)  
Xbar = mean(values)  
S2 = var(values)  
S = sqrt(S2)  
mu0 = 1.84  
W = (Xbar - mu0)/(S/sqrt(length(values)))  
alpha = 0.01  
tfunc = qt(1-(alpha/2),length(values)-1)  
accepted = abs(W)<=tfunc
 ```
 Ved dette får vi hermed at den er accepteret. Signifikansniveau angiver hvor sikker vi er på at den ikke bliver afvist hvor den er sand. I dette tilfælde er det altså 99% sikkert.
 ___
 ![[Tø uge 12 vinter 20182019.png]]
 C er her
 ```R
 qexp(1-0.05,2)
 ```
 Giver os 1.49
 Derved vil den ikke godkende 2.3.
 ER DETTE RIGTIGT? VIRKER STRANGE.