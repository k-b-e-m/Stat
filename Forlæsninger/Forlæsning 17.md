[[5.3 More Topics]]

![[Lemma 5.3 properties of covariance.png]]
 2.
 Hvis X og Y er Ufhængige er Covariance 0, også kaldt ukorreleret.
 Cov(X,Y) = 0 Er Ukorreleret.
Hvis X og Y er Ufhængige:
$$
X,Y:Independet\Rightarrow Cov(X,Y)=0
$$
$$
Cov(X,Y)=0\not\Rightarrow X,Y:Independent
$$

3.
Cov er symmetrisk. fordi:
$$
E[XY] - E[X]E[Y] = E[YX] - E[Y]E[X]
$$
___
Hvis X,Y er ufhængige:
$$
Var(X + Y) = Var(X) + Var(Y)
$$
Hvis X og Y ikke nødvendigvis er ufhængige:
$$
Var(X + Y) = Var(X) + Var(Y) + 2Cov(X,Y)
$$
___
#Example 
X,Y ~ N(0,1), X,Y:Independent
Vi Skal finde Cov(Z,W)
$$
\begin{align}
Z= 1 + X + XY^{2}
W = 1 + X \Rightarrow\\
Cov(1 + X + XY^{2},1 + X) && \text{Ved brug af lemme 5.3 5 og 3}\\
=Cov(X + XY^{2},X)\\
= Cov(X + X)  + Cov(XY^{2},X)\\
=Var(X)  + Cov(XY^{2},X)\\ && \text{varians af N}\\
=1 +  Cov(XY^{2},X)\\
= 1 +  E[X^{2}Y^{2}]  -  E[XY^{2}] - E[X] && \text{Defination for Cov}\\
=  1 +  E[X^{2}]E[Y^{2}]  -  0 && \text{Grundet at de to er ufhængige og variansen E[X] for N}\\
= E[X^{2}]E[Y^{2}]=1 = Var(X) && \text{Ved brug af isolation}
\end{align}
$$
[[Lemma 5.3 properties of covariance.png]]
[[covariance.png]]
___
![[correlation coefficient.png]]
![[properties of the correlation coefficient.png]]
___
[[6.1 Methods for More Than Two Random Variables]]
Kapitel overfører alle udsagn med 2 variable til n variable.
Kapitel 6 viser egentlig bare at alle regler gælder for flere variabler som for to variabler.

#Example 
Sætning A'
Antag at $X_1 ...X_n$ er ufhængige stokastiske variabler. Hvis $Y_{1}... Y_{K}$ Betegner stokastiske variable som fremkommer ved at transformere grupper af forskellige af variablerne x$X_1...X_{n}$ så er $Y_{1}...Y_{k}$ ufhængige
 ___
 [[7.2 Convergence of Random Variables]]
 ![[Convergence in Distribution.png]]
 ___
 STATISTIK STARTER NU

Statistik er et forsøg på at beskrive virkeligheden baseret på data.

Når man arbejder med statistik arbejder man med:
Finde estimere parameter
Forudsige prædikere
Teste hypoteser
Data mining og machine learning

___
Defination $X_{1}..X_{n}$ er en stikprøve hvis disse 2 betingelser er opfyldt:
1) $X_{1}... X_{n}$ er uafhængige
2)  $X_{1}... X_{n}$ er identisk fordelt
___
Egenskaber af $\Theta$ $\sigma ^{2}=Var(X_{1}), \mu = E[X_{1}]$
1) $E[X_{n}] = \mu$
2) $Var(X_{n}) =\frac{\sigma^{2}}{n}$ 
3) $X \rightarrow \mu$  i ss Law of Large numbers
4) $\sqrt{n} \frac{1}{\sigma} (X_{n} - \mu) \rightarrow Z~N(0,1))$  i  fordi CLT

[[8.2 Point Estimation]]
Et estimat $\Theta$ er en funktion af data: $\Theta = h(X_{1}...X_{n})$ må ike afhænge af $\Theta$ 
___
![[Bias of a point.png]]
![[Unbiased of estimator.png]]
Unbiased kan også defineres som når $E[\Theta^ {'}]=\Theta$ 
![[MSE = VAR + B.png]]
