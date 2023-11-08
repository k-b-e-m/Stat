I statistik kigger vi på 2 verdner. Det virkelige og data.
$\Theta$ = ukendt (virkeligheden)
$\hat\Theta$ = Data
[[8.2 Point Estimation]]
![[MSE = VAR + B.png]]
![[Bias vs Varians.png]]
[[Unbiased of estimator.png]]
[[Bias of a point.png]]
[[Variance of random variables.png]]
Stor varians er meget skidt eftersom de enkelte punkter kan ligge meget langt væk fra $\Theta$ .
![[Consisten estimator.png]]
___
Egenskaber af $\hat\Theta =\bar X = \frac{X_{1}  +  ... X_{n}}{n}$
1) $E\bar X =$ $\Theta$  
2) MSE(X)=Var(X)=$\frac{\sigma^{2}}{n}$ 
3) LLN $X\rightarrow\Theta$ 
4) CLT $\frac{\sqrt{n}}{\sigma}(X - \Theta)\rightarrow ~ N(0,1))$
I "data" verden har man desude:
$\mu = \bar X$  hvor $\bar X$ er middelværdi af alle data.
___
Når $\mu$ er kendt
$E[X^{2}] - \mu^{2}$ 
Når $\mu$ er ukendt:
$\bar S^{2}=\frac{1}{n}\sum_{i=1}^{n}X_{i}^{2} - \bar X^{2}$ 
$E[\bar S ^{2}]= \frac{n - 1}{n} \sigma^{2}<\sigma^{2}$ 
DÅRLIG $B(\bar S^{2})=\sigma^{2} - \frac{1}{n}\sigma^{2} - \sigma^{2}=\frac{1}{n}\sigma^{2}$ 
GOD: $S^{2}=\frac{n}{n - 1}\bar S^{2}$ 

Tommelfingerregel til estimering af varians:
$\Theta \sigma^{2}$
brug $\hat \Theta = S^{2}=\frac{1}{n-1}\sum_{i=1}^{n}(X_{i} -\bar X)^{2}$ 
$\sqrt{S^{2}} =$ stikprøvestandard afvigelse.

___
![[The maximim likelihood estimator (MLE).png]]
"Vælg parameteren som giver størs mulig ss til observitionerne"

#Example 
![[eample 8.7 with solution.png]]
