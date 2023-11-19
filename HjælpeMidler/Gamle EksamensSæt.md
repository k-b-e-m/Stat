![[Vinter 20122013 opgave 1.png]]
a)
![[Computation of variance.png]]
![[Definition 3.11 Expected value (= mean = average).png]]
![[Law of unconsious statistician (LOTUS).png]]

EX = 0.25 = 1/4
Var = 0.6875 = 11/16
Brugt java scripts metode findInformationOfDiscretePDF
.

![[387463604_206033075797241_8189001792467453724_n 1.jpg]]
3)
P(|X|=1) (eksempel 3.16) 
probability
| - 1|  +  1 = $\frac{1}{4}$  +  $\frac{1}{2} = \frac{3}{4}$ 
Vi har derved for |X| enten 0 eller 1. Det er det samme som en bernoulli($\frac{3}{4}$) Som  er det samme som en $Binomial(1,\frac{3}{4})$, reference lemma 3.1.
Eftersom at Y har den samme fordeling som x er |X| + |Y| også en Binomial.

___
![[eksmaen vinter 20122013 opgave 2.png]]
1)
Vi refere her til marginal PDF
![[Marginal PDF's of two continuous random variables.png]]
Ved integration med Geogebra:
f(x)=x/2
f(y)=y/2
Derved er de vist.

2)
![[Expected value for continous random variable.png]]
EY = 
$$
EY = \int_{0}^{2} y \frac{1}{2}y = \frac{4}{3}
$$
Var(Y) =
![[Lotus of continuous random variabæe.png]]
$$
Var(Y) = E[Y^{2}]  -  EY^{2}
$$
$$
E[Y^{2}] = \int_{0}^{2}y^{2} \frac{1}{2}y = 2
$$
$$
Var(Y) = 2  -  (\frac{4}{3})^{2} = 2 - \frac{16}{9} = \frac{2}{9}
$$
___
3)
![[Independent random variables rules and definition for two contious random variables.png]]
$$
\frac{1}{2}x \cdot \frac{1}{2}y = \frac{1}{4}xy
$$
Dette er sandt, derved er de independent.
![[covariance.png]]
![[Lemma 5.3 properties of covariance.png]]
$$
\begin{align}
Cov(X,X + Y) \Rightarrow \text{regel 3}\\
Cov(X + Y,X) \Rightarrow \text{regel 6}\\
Cov(X,X) + Cov(Y,X) \Rightarrow \text{regel 1 og 2}\\
Var(X)  +  0 \Rightarrow\\
\frac{2}{9} + 0
\end{align}
$$
