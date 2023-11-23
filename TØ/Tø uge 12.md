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
___
Del 2:
![[Tø uge 12 vinter 20192020 opgave 5.png]]
![[covariance.png]]
$$
\begin{align}
Cov(X_{i},\bar X) = E[X_{i}\bar X]  - \theta \cdot \bar X 
\end{align}

$$
___
![[Tø uge 12 sommer 2018 opgave 5.png]]

1)
[[table 8.2 - two sided.png]]
Udfra dette table kan vi finde test statistik:
$$
W = \frac{\bar X  -  \mu_{0}}{\frac{S}{\sqrt{n}}}
$$
I vores tilfælde:
$$
\bar X = \frac{1}{7}\cdot 3.93 + 3.41  +  3.08  +  4.72  +  3.37  +  4.03  +  4.82 = \frac{684}{175} \approx 3.9
$$

![[Sample Variance and Sample Standard deviation.png]]
$S² = \frac{1}{6}(\Sigma_{k=1}^{7} X_{k} - 7\bar X)² = 0.2485$ 
$S = \sqrt{0.2485} = 0.4985$
S2 er regnet forkert benyt R: S=0.67
Derved er:
$$
W=\frac{\frac{684}{175} - 4}{\frac{0.67}{\sqrt{7}}} = -0.36
$$
for at acceptere den med et signifikantsniveau på 0.05 skal den altså opfylde:
$$
\begin{align}
| - 0.36|\leq t_{\frac{0.05}{2},6}\\
t_{\frac{0.05}{2},6}= 2.44
\end{align}

$$
regnet ved hjælp af R
```R
qt(1 - 0.5/2,6)
```

Derved er den accepteret ved et signifikantsniveau på 0.05

2)
[[Forlæsning 20]]
$$
[\bar X  -  t_\frac{a}{2,n -1 }\frac{S}{\sqrt{n}},\bar X   +   t_\frac{a}{2,n -1 }\frac{S}{\sqrt{n}}]
$$
Ved brug af R script:
$$[3.28,4.52]$$


___
![[Tø uge 12 vinter 20202021 opgave 7.png]]
