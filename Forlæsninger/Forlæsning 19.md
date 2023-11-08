#Example 
![[The maximim likelihood estimator (MLE).png]]

![[Forlæsning 19 example 8.10.png]]
2.
Her vil $\hat\Theta_{ML}=\frac{1}{\bar X}$ 
Hvilket giver god mening da EX for en exponential function er $\frac{1}{\lambda}$ .
Desuden efetersom vi ved at dert er en exponentiel funktion ved vi at dens forskrift er :
$$
f_{X_{1}}(x_{1}) = \Theta e^ {- \Theta x_{1}}
$$
Det vil sige vores at vore $L(\Theta) = \Theta^{n} e^ - \Theta(x_1 + \cdots  + x_{n})$ 
hvis vi tager log likelihood får vi:
$$
log(\Theta^{n} e^ - \Theta(x_{1} + \cdots  +  x_{n))}
$$
Ved brug af regneregler får vi:
$$
n log(\Theta) - \Theta(x_{1} + \cdots  +x_{n})
$$
$$
l'(\Theta) = \frac{n}{\Theta} - (x_{1} + \cdots  + x_{n}) 
$$
$$
x_{1} + \cdots x_{n} = \frac{n}{\Theta}= \frac{1}{\Theta} = \frac{x_{1} \cdots x_{n}}{n} = \bar X
$$
$$
\Theta = \frac{1}{\bar X} = \hat\Theta_{ML}
$$
___

#Example 
Vi har her en stikprøve $X_{1}...X_{n}$ hvor $X_{1}$~ N($\mu , \sigma^{2}$)
Vi har nu at at vores l($\Theta$) har et $\Theta$ = $\mu$ , $\sigma^{2}$
Dette er det samme som:
$$
\hat\Theta_{ML}=(\bar X, \bar S^2)
$$
___
[[8.3 Interval estimation (Confidence Intervals)]]
Defination
0<$\alpha$ <1. en (1 - $\alpha$ ) CI
er et interval $[\hat\Theta_{l}, \hat\Theta_{h}]$
Hvor $\hat\Theta_{l}$ $\hat\Theta_{h}$ er estimater : 
$$P\theta \in[\hat\Theta_{l},\hat\Theta_{h}] \geq 1 -  \alpha $$
typisk:
$\alpha$ = 0.05 => 95%
$\alpha$ = 0.1 => 90%
Bemærk:
$$
P\theta \in[\hat\Theta_{l},\hat\Theta_{h}] \Rightarrow P(\hat\Theta_{l}\leq \theta \leq \hat\Theta_{h})
$$

____
$F_{X}^ {- 1}$ = inverse fordelingsfunktion til $F_{X}$
def
$F_{X}^ {- 1}(\alpha)$ er a - fraktil til X.
$\alpha$ fraktil er det sted hvor vi har ligepræcis $\alpha$ under grafen.
___
#Example 

sæt 
$$
\begin{align}
x_{l} = F_{X}^{-1}(\frac{\alpha}{2})\\
x_{h} = F_{X}^{-1}(1 - \frac{\alpha}{2})\\
P(x_{l}\leq X \leq x_{h}) = 1 - \alpha\\ 
\end{align}
$$
___
"(1 - p) - fraktil er zp"
hvis man er interreseret i $\alpha$ fraktilen skal man have $z _{1} - p$
I R skriver man:
```R
zp = qnorm(1 - p)
```
___

#Example 
![[example 8.13.png]]
___
