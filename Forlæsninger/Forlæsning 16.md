![[LOTUS for Two Discrete Random Variables.png]]
![[Law of total probability for two random variables.png]]
Alternativer måder at skrive disse to på:
LOTP:
$$
f_{X|Y}(x,y)= \frac{f_{X,Y}(x,y)}{f_{Y}(y)}
$$
Total middelværdi:
$$
E[X=\int_{-\infty}^{\infty}=E[X|Y=y]f_{Y}(y)dy
$$
Vi kan også benytte os af [[Bayes rule.png]]
$$
f_{Y|X}(y,x)= \frac{f_{X|Y}(x|y)f_{Y}(y)}{f_{X}(x)}
$$
___
#Example 
![[example 5.26.png]]

$$
f_{Y}(y)=\begin{equation}
\begin{cases}
1 && 1\leq y \leq 2 \\
 0 && otherwise
\end{cases}
\end{equation}
$$
X|Y=y ~ exponential(y)
$$f_{X|Y}(x|y) = \begin{equation}
\begin{cases}
ye^{-yx} && x>0 \\
0 && otherwise
\end{cases}
\end{equation}$$
$E[X|Y=y]=\frac{1}{y}$ 
$E[X] = \int_{1}^{2}E[X|Y=y]f_{Y}(y)dy$
		$= \int_{1}^{2} \frac{1}{y}\cdot 1 dy$
		$$=[log(y)]_{1}^{2}=log(2)$$
[[Law of total probability for two random variables.png]]
___
![[Independent random variables rules and definition for two contious random variables.png]]
___
#Example 5.28
X~uniform(0,1) , Y~uniform(0,1)
uafhhængige.
$f_{X,Y}(x,y)=f_{X}(x)\cdot f_{Y}(y)$
fordi de er ufhængige.
$R_{X}=R_{Y}=[0,1]$
$R_{XY}= R_{X}\times R_{y}$
$R_{XY}=[0,1]$
$Z=f_{XY}(x,y)$
lad: $0<Z<1$
$F_{Z}(z)=P(Z\leq z)=P(X\cdot Y \leq z) = P((X,Y)\in A)$
$A=\{(x,y)\in \mathbb{R}^{2} : x\cdot y \leq z\}=\{(x,y)\in \mathbb{R}^{2} : y \leq \frac{z}{x}\}$

