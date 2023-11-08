![[Tø 10 Problem 1.png]]
Først vil vi beregne sample mean:
$$
\bar X = \frac{165.5 + 175.4 + 144.1 + 178.5 + 168.0 + 157.9 + 170.1 + 202.5 + 145.5 + 135.7}{10}  = \frac{1643.2}{10} = 164.32
$$
![[Sample Variance and Sample Standard deviation.png]]
Vi vil nu regne sample variance:
$$
	\begin{align}
\frac{1}{n - 1}\left(\sum_{k=1}^{n}X_{k}^{2} - n\bar X^{2}\right) = \frac{1}{10 - 1}\\
((165,5 - 164.32)^{2}  + \\
(175,4    - 164.32)^{2}  + \\
(144,1   - 164.32)^{2}  + \\
(178,5  -  164.32)^{2} +\\
(168,0 - 164.32)^{2} +  \\
(157,9   - 164.32)^{2}  + \\
(170,1   164.32)^{2}  + \\
(202,5   - 164.32)^{2}  + \\
(145,5   - 164.32)^{2}  + \\
(135,7   - 164.32)^{2} )\\
= \frac{1}{9}​3463,1\approx 384,8 
\end{align}
$$
for sample standard deviation får vi så:
$$
S=\sqrt{384,8} = 19,61
$$
___

![[Tø Uge 10 sommer 2019 opgave 7.png]]
![[MSE = VAR + B.png]]
![[Bias of a point.png]]
Vi ved at for en poisson har vi:
$$
E[X]=\lambda
$$
og
$$
Var(X)=\lambda
$$
____
![[Tø Uge 10 øvelse 4.png]]
![[Likelihood function.png]]
$$
\begin{align}
L(2,3,3,5)=(p(1 - p)^{2-1})(p(1 - p)^{3 - 1})(p(1 - p)^{3 - 1})(p(1 - p)^{5 - 1})\\
=p^{4}(1 - p)^{9}
\end{align}
$$
___
![[Tø Uge 10 Problem 7.png]]
![[Unbiased of estimator.png]]
![[Bias of a point.png]]
SPØRG TIL TØ
___
![[Tø Uge 10 eksamen 20192020 opgave 6.png]]
SPØRG TIL TØ
![[Unbiased of estimator.png]]
![[Bias of a point.png]]

___
![[Tø Uge 10 eksmaen vinter 20192020 opgave 7.png]]
![[The maximim likelihood estimator (MLE).png]]
![[Likelihood function.png]]

$$
\begin{align}
log(\prod_{i=1}^{n}\theta x_{i}^{\theta - 1})= && \text{log likelihood function}
\\
nlog(\theta) + (\theta - 1)nlog(x_{i})=\\
\sum_{i=1}^{n}log(\theta) + (\theta - 1)log(x_{i})=\\
\frac{d}{d\theta} \sum_{i=1}^{n}log(\theta) + (\theta - 1)log(x_{i}) =\\
\frac{n}{\theta} + \sum_{i=1}^{n}log(x_{i})\\
\frac{n}{\theta} + \sum_{i=1}^{n}log(x_{i}) = 0 && \text{ finding the critical point(maximising } \theta)\\
 - \sum_{i=1}^{n}log(x_{i}) = \frac{n}{\theta}\\
 - \frac{\sum_{i=1}^{n}log(x_{i})}{\theta} = n\\
 \theta =  - \frac{n}{\sum_{i=1}^{n}log(x_{i})}

\end{align} 
$$

___
![[Tø Uge 10 problem 2.png]]
SPØRG TIL TØ
___
![[Tø Uge 10 Problem 3.png]]
SPRØG TIL TØ
