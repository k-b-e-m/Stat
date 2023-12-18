### Diskret:
#### Joint PMF:
$$P_{XY}= P(X=x,Y=y)$$
Betyder
$$P((X=x) \text{ og } (Y=y))$$
Range:
$$R_{XY} = \{(x,y)|P_{XY}(x,y)>0\}$$
hvis $R_X=\{x_1,x_2,\cdots\}$ og $R_Y=\{y_1,y_2,\cdots\}$ så kan man skrive: 
$$R_{XY}\subset R_X \times R_Y = \{(x_i,y_j)|x_i \in R_X, y_j \in R_Y\}$$
##### Marginal PMF'er:
![[Pasted image 20231211110101.png]]
###### Eksempel:
![[Pasted image 20231211110216.png]]
- a) Find $P(X=0,Y \leq 1)$
	![[Pasted image 20231211110359.png]]
- b) Find de marginale PMF'er
	![[Pasted image 20231211110438.png]]
- c) Find $P(Y=1 | X=0)$
	![[Pasted image 20231211110529.png]]
- d) Er X og Y uafhængige
	![[Pasted image 20231211110609.png]]


#### Joint CDF:
$$F_{XY}(x,y) = P(X \leq x, Y \leq y)$$
Betyder
$$\begin{align}
F_{XY}(x,y) &= P(X \leq x, Y \leq y)\\
&= P((X \leq x) \text{ og } (Y \leq y))\\ 
&= P((X \leq x) \cap (Y \leq y))
\end{align}$$
Husk:
$$0 \leq F_{XY}(x,y) \leq 1$$
##### Marginal CDF:
![[Pasted image 20231211120242.png]]
Husk:
$$\begin{align}
F_{XY}(\infty,\infty) &= 1\\
F_{XY}(-\infty,y) &= 0\\
F_{XY}(x,-\infty) &= 0
\end{align}$$
###### Eksempel:
![[Pasted image 20231211120634.png]]
![[Pasted image 20231211120718.png]]
![[Pasted image 20231211120755.png]]
![[Pasted image 20231211120808.png]]
###### Note:
Man skal ofte bruge PDF'en for at kunne finde CDF'en

#### Conditional PMF og CDF
![[Pasted image 20231211121045.png]]
Her skal man både bruge den Joint PMF og den marginale, for at kunne finde Conditional PMF.
###### Uafhængighed:
![[Pasted image 20231211121816.png]]
###### Mere generelt:
![[Pasted image 20231211121320.png]]
##### Conditional Expectation
![[Pasted image 20231211121834.png]]
###### Conditional Expectation (uafh.)
![[Pasted image 20231211122848.png]]
###### LOTUS
![[Pasted image 20231211123503.png]]

##### Law of Total Probability
![[Pasted image 20231211123157.png]]

### Kontinuert:
#### Joint PDF:
![[Pasted image 20231211123843.png]]

#### Joint CDF: 
![[Pasted image 20231211124352.png]]
![[Pasted image 20231211124533.png]]
![[Pasted image 20231211124706.png]]
#### Expectation:
![[Pasted image 20231211124848.png]]
#### Conditional:
##### PDF og CDF
![[Pasted image 20231211125026.png]]
##### Expectation of Variance
![[Pasted image 20231211125109.png]]
##### Independence
![[Pasted image 20231211125258.png]]
###### Loven for total sandsynlighed
![[Pasted image 20231211125406.png]]

### Covariance and Correlation
#### Covariance
![[Pasted image 20231211125802.png]]
![[Pasted image 20231211125818.png]]
#### Correlation
![[Pasted image 20231211125921.png]]
![[Pasted image 20231211130023.png]]
![[Pasted image 20231211130118.png]]

### Theorem 5.2
Gælder kun hvis X og Y er uafh.
![[Pasted image 20231213113613.png]]
### Multiple Random Variables (Kapitel 6)
Det er meget det samme, bare med flere variabler, så når de er kontinuerte f.eks., skal man bare integrerer flere gange.

![[Pasted image 20231211132735.png]]

![[Pasted image 20231211132753.png]]


### Opgaver
#### Find marginal PDF, Udregn sandsynlighed of find Varians
eksempel: 
$$
	\begin{equation} f_{XY}(x,y) =
	 \begin{cases} 
	 21y^2 & \text{hvis }0 \leq x \leq 1, 0 \leq y \leq x^2\\
	 0 & \text{ellers}
	 \end{cases} 
	\end{equation}
	$$
- Find PDF $f_Y(y)$
	Find først Y's range
	$$\begin{align}
	R_Y &= 0 \leq y \leq x^2\\
	&= \sqrt{0} \leq \sqrt{y} \leq \sqrt{x^2}\\
	&= 0 \leq \sqrt{y} \leq x\\
	&= 0 \leq x - \sqrt{y}\\
	&= 0 \leq 1 - \sqrt{y}
	\end{align}$$
	da x højst kan antage værdien 1
	$$\begin{align}
	f_Y(y) &= \int_{-\infty}^\infty f_{XY}(x,y)dx && R_Y\\
	&= \int_0^{1-\sqrt{y}}21y^2dx\\
	&= 21y^2(1-\sqrt{y}) && \text{for }0 \leq y \leq 1
	\end{align}$$

- Find PDF $f_X(x)$
	Samme fremgangsmåde, men den er lidt funky
	Her skal man kigge på X's range som $0$ til $x^2$
	Detter er lidt forvirrende i forhold til næste delopgave.
	$$\begin{align}
	f_X(x) &= \int_{-\infty}^\infty f_{XY}(x,y)dy && R_X\\
	&= \int_0^{x^2}21y^2dx\\
	&= 7x^6 && \text{for }0 \leq x \leq 1
	\end{align}$$

- Beregn $P(Y \leq X^3)$
	Her skal vi tage double integralet, først i forhold til Y i dette tilfælde:
	$$\begin{align}
	P(Y \leq X^3) &= \int_{-\infty}^\infty \int_{-\infty}^\infty f_{XY}(x,y)dydx\\
	&= \int_0^1 \int_0^{x^3} 21y^2 dydx\\
	&= \int_0^1 7x^9\\
	&= \frac{7}{10}
	\end{align}$$
	Her løber Y fra 0 til $X^3$ grundet $Y \leq X^3$

- Beregn $Var(\frac{13}{\sqrt{X}})$
	Benytter definitionen for Var
	$$Var(X) = E[X^2] - E[X]^2$$
	Her har vi:
	$$Var(\frac{13}{\sqrt{X}}) = E[(\frac{13}{\sqrt{X}})^2] - E[\frac{13}{\sqrt{X}}]^2$$
	Her skal jeg benytte LOTUS på begge udtryk:
	$$E[g(x)] = \int_{-\infty}^\infty g(x)f_X(x) dx$$
	Da denne varians er over X, skal man bruge den marginale PDF for X
	$$\begin{align}
	E[(\frac{13}{\sqrt{X}})^2] &= \int_0^1 (\frac{13}{\sqrt{x}})^2\cdot 7x^6 dx\\
	&= \frac{1183}{6}
	\end{align}$$
	$$\begin{align}
	E[\frac{13}{\sqrt{X}}] &= \int_0^1 (\frac{13}{\sqrt{x}})\cdot 7x^6 dx\\
	&= 14
	\end{align}$$
	$$\begin{align}
	Var(\frac{13}{\sqrt{X}}) &= E[(\frac{13}{\sqrt{X}})^2]-E[\frac{13}{\sqrt{X}}]\\
	&= \frac{1183}{6} - 14^2\\
	&= \frac{7}{6}
	\end{align}$$


