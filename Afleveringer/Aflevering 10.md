![[Aflevering 10 problem 8.png]]
![[Aflevering 10 trykfejl.png]]

a)

Da vi ved at vi har at gøre med en poisson ved vi at vi har PMF: $\frac{e^ {- \lambda}\lambda^{x_{i}}}{x_{i}!}$ 

![[Likelihood function.png]]
$$
\begin{align}
L(x_{1},\cdots,x_{n}) =
\prod_{i=1}^{n} \frac{e^ {- \lambda}\lambda^{x_{i}}}{x_{i}!} \Rightarrow\\
e^ {- \lambda n}\prod_{i=1}^{n} \frac{\lambda^{x_{i}}}{x_{i}!} \Rightarrow\\
e^ {- \lambda n}\cdot  \lambda^{\sum_{i=1}^{n}x_{i}} \prod_{i=1}^{n} \frac{1}{x_{i}!}
\end{align}
$$
b)
Vi skal her tage log til de vi lige har fundet:
$$
\begin{align}
log\left(e^ {- \lambda n}\cdot  \lambda^{\sum_{i=1}^{n}x_{i}} \prod_{i=1}^{n} \frac{1}{x_{i}!}\right)\Rightarrow\\
log(e^ {- \lambda n})  +  log\left(\lambda^{\sum_{i=1}^{n}x_{i}}\right) +  log\left(\prod_{i=1}^{n} \frac{1}{x_{i}!}\right)\Rightarrow\\
 - \lambda n  + log\left(\lambda^{\sum_{i=1}^{n}x_{i}}\right) + log\left(\prod_{i=1}^{n} \frac{1}{x_{i}!}\right) \Rightarrow\\
 - \lambda n  + log\left(\lambda^{\sum_{i=1}^{n}x_{i}}\right) + \sum\limits_{i=1}^{n}  log(\frac{1}{x_{i}!})\Rightarrow\\
  - \lambda n  + log\left(\lambda^{\sum_{i=1}^{n}x_{i}}\right) + \sum\limits_{i=1}^{n}   - log(\{x_{i}!)\Rightarrow\\
  - \lambda n  + \sum_{i=1}^{n}x_{i} log\left(\lambda \right) + \sum\limits_{i=1}^{n}   - log(x_{i}!)

\end{align}
$$
For nu at finde MLE:
$$
\begin{align}
\frac{d}{d\lambda} - \lambda n  + \sum_{i=1}^{n}x_{i} log(\lambda) + \sum_{i=1}^{n}   - log(x_{i}!) \Rightarrow\\
\frac{\sum_{i=1}^{n}x_{i}}{\lambda} - n \Rightarrow\\\text{ Finder nu det kritiske punkt}\\
\frac{\sum_{i=1}^{n}x_{i}}{\lambda} - n  = 0 \Rightarrow\\
\frac{1}{\lambda}\sum_{i=0}^{n}x_{i}  - n  = 0 \Rightarrow\\
\lambda = \frac{1}{n}\sum_{i=1}^{n}x_{i}


\end{align}
$$

Derved har vi en $\hat\lambda_{ML} = \frac{\sum_{i=1}^{n}x_{i}}{n}$
Dette er det samme som at skrive
$$
\frac{x_{1} + x_{2},\cdots , +  x_{n}}{n}
$$
Dette er det samme som formlen for sample mean $\bar X$ . Dette vil sige at vores $\lambda$ for vores poisson fordeling kan findes ved hjælp af sample mean. Hvilket giver god mening i forhold til Law of large numbers.

