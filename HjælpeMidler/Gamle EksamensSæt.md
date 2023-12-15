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
___
![[Sommer 2023 opgave 1.png]]



___
![[Sommer 2023 opgave 2.png]]

___
![[Sommer 2023 opgave 3 del 1.png]]
![[Sommer 2023 opgave 3 del 2.png]]

___

![[Sommer 2023 opgave 4.png]]
___
![[Sommer 2023 Opgave 5.png]]
___
![[Sommer 2023 opgave 6.png]]
___
![[Sommer 2023 opgave 7.png]]
___
![[Sommer 2023 opgave 8.png]]
___
![[Vinter 20172018 opgave 1.png]]

1)
For udregning af P(X<0)
$$
P(X<0) = P(X=1) + P(X=2) = 0.3 + 0.5 =0.8
$$
Derved er P(X<0) = 0.8

Var(X)
![[Computation of variance.png]]
![[Law of unconsious statistician (LOTUS).png]]
$$
E[X^{2}] = 0^{2} \cdot 0.2  + 1^{2}\cdot0.3  +  2^{2}\cdot 0.5 = 2.3
$$
$$
E[X] =  0 \cdot 0.2  + 1 \cdot 0.3  +  2\cdot 0.5 =1.3 
$$
$Var(X) = 2.3  -  1.3^{2} = 0.61$ 
___
2)
For udregning af $P(X<2,Y>1)$
Eftersom de er ufhængige kan vi benytte os af defination 3.2
![[definition 3.2 independent random variables.png]]
Derved har vi nu at vi skal finde:
$$
P(X<2,Y>1) = P(X<2)P(Y>1)
$$
Vi har først for $P(X<2)$
$$
P(X<2) = P(X=1)  +  P(X=0) = 0.5
$$
$$
P(Y>1) = P(Y=2) = 0.3
$$
$P(X<2,Y>1) = 0.5 \cdot 0.3 = 0.15$
$$
P(\{X<2\}\cup \{Y<2\}) = 0.5 (0.3 + 0.4) = 0.35
$$
___
3)
Beregn covariance $Cov(2X - 5Y,7X + 4Y + 1)$
![[Lemma 5.3 properties of covariance.png]]
$$
\begin{align}
Cov(2X - 5Y,7X + 4Y + 1) \Rightarrow &&\text{regel 6}\\
Cov(2X,7X + 4Y + 1)  +   Cov( - 5Y,7X + 4Y + 1) \Rightarrow &&\text{regel 4}\\
2Cov(X,7X + 4Y + 1) +  - 5Cov(Y,7X + 4Y + 1) \Rightarrow &&\text{regel 3}\\
2Cov(7X + 4Y + 1,X) +  - 5Cov(7X + 4Y + 1,Y) \Rightarrow &&\text{Regel 6}\\
2Cov(7X,X)  + 2Cov(4Y + 1,X)  +   - 5Cov(7X,Y)  +  - 5Cov(4Y + 1,Y) \Rightarrow &&\text{regel 4}\\
14Cov(X,X)  + 8Cov(Y + 1,X)  +   - 35Cov(X,Y)  +  - 20Cov(Y + 1,Y)\Rightarrow &&\text{regel 5}\\
14Cov(X,X)  + 8Cov(Y,X)  +   - 35Cov(X,Y)  +  - 20Cov(Y,Y) \Rightarrow &&\text{regel 2}\\
14Cov(X,X)  -20Cov(Y,Y) \Rightarrow &&\text{regel 1}\\
14Var(X)  - 20Var(Y) = 14\cdot 0.61  - ()
\end{align}
$$

$$
Var(Y) = E[Y^{2}] - E[Y]^{2}
$$
$$
E[Y^{2}] = 1.6
$$
$$
E[Y]= 1
$$
$Var(Y) = 1 .6  - 1 =0.6$

For:
$$
14Var(X)  -  20Var(Y) = 14\cdot 0.61  -20\cdot 0.6  =  - 3,46 
$$  ___
![[Attachments/Vinter 20172018 Opgave 2.png]] 

1)
Beregn $E[Y]$ 

![[Expected value for continous random variable.png]]
$E[Y] = \int_{0}^{1}y\cdot f_{Y}(y) = \frac{5}{12}$

2)
![[Marginal PDF's of two continuous random variables.png]]
$$
f_{X}(x) = \int_{0}^{x} f_{XY}(x,y) = 3x^{2}
$$
![[Independence of two random variables.png]]
Vi tager her et givet tal (0.8,0.5):


$$
2(0.8 + 0.5) = 3(0.8)^{2} \cdot (1 + 2(0.5)  - 3(0.5)^2)
$$
$$
\frac{13}{5} = \frac{12}{5}
$$
De er derved ikke ufhængige

c)
![[Lotus for two continuous random variable.png]]
$$
\int_{0}^{1}\int_{0}^{1} xy(2(x + y)) dxdy = \frac{2}{3}
$$
___

![[Vinter 20172018 Opgave 3.png]]
1)
![[Lotus of continuous random variabæe.png]]
2)
![[Theorem 4.1.png]]
![[Theorem 4.1'.png]]
___
![[vinter 20172018 Opgave 4.png]]
![[Likelihood function.png]]
___
![[vinter 20172018 opgave 5.png]]

1)
2)
![[get n+1 value for a markov chain. Build upon law of total prob.png]]
___
![[Vinter 20172018.png]]
![[definition of irreducible.png]]
![[finite irreducible markov chain aperiodic if.png]]
![[Theorem about Finite Markov Chains.png]]
___
![[Vinter 20172018 opgave 7.png]]

1)
![[Chain rule for conditional probability.png]]
2)
![[Bayes rule.png]]
![[Law Of Total Probability.png]]
___
![[Vinter 20172018 Opgave 8.png]]

![[Law of total Variance for continous conditional variance.png]]
![[Expected value for continous random variable.png]]

![[Lemma 5.3 properties of covariance.png]]

![[Sample Variance and Sample Standard deviation.png]]
![[Theorem 4.1'.png]]
____
