![[problem 26.png]]
a)
Eftersom de er independent kan vi gøre dette:
$E[XY]= E[X]E[Y] = \frac{1}{2}(0+1) \cdot \frac{1}{2}(0+1) = \frac{1}{4}$
[[Forlæsning 14]]
b)
![[Lotus for continuous random variables.png]]

$$
\begin{align}
E[e^{X+Y}]=E[e^{X}]E[e^{Y}] = \int_{0}^{1}e^{x_{k}}f_{X}(x_{k})dx \cdot  \int_{0}^{1}e^{y_{k}}f_{Y}(y_{k})dx =\\
e-1 \cdot e-1 = (e-1)^{2}
\end{align}
$$
c)
![[Independent random variables rules and definition for two contious random variables.png]]

![[Lotus for two continuous random variable.png]]

$$
\begin{align}
E[X^{2}+Y^{2}+XY] = \int_{0}^{1}\int_{0}^{1}X^{2}+Y^{2}+XY \cdot \frac{1}{1-0}\cdot \frac{1}{1-0} dxdy =\\   \int_{0}^{1}\int_{0}^{1}X^{2}+Y^{2}+XY \cdot 1 dxdy =
\int_{0}^{1}\frac{6y^{2}+3y+2}{6} dy = \frac{11}{12}
\end{align}
$$
d)
$$
E[Ye^{YX}] = \int_{0}^{1}\int_{0}^{1}y\cdot e^{yx} \cdot 1 dx dy =\int_{0}^{1} e^{y}-1 dy = e-2 \approx 0.71
$$
___
![[vinter 20172018 opgave 2.png]]
1)
![[Expected value for continous random variable.png]]
$$
\begin{align}
E[Y] = \int_{0}^{1}y\cdot 1+2y-3y^{2} dy =\\
\int_{0}^{1}y+2y-3y^{2}dy = \int_{0}^{1}3y-3y^{2}dy =\\
\frac{3}{2}1^{2}+k -1^{3}+k- \frac{3}{2}0^{2}+k -0^3 +k=\\
\frac{3}{2}1^{2}+k -1^{3}+k- 2 k =\\
\frac{3}{2}1^{2} -1^{3} = 0.5
\end{align}
$$
WRONG, husk at gange y på alle led i fx
2)
Find den marginale PDF fc for X og afgør om X og Y er ufhængige:
![[Marginal PDF's of two continuous random variables.png]]
$$f_{X}(x)=\int_{0}^{x} 2(x+y)dy = \int_{0}^{x} 2x+2y dy = 3x^{2}
$$
![[Independent random variables rules and definition for two contious random variables.png]]
vi vælger her at x er 0 og y er 1:
$$
2(0+1) = (2\cdot0+1) \cdot (1+2\cdot1-3\cdot 1^{2}) \Rightarrow 2 = 1(1+2 - 3) \Rightarrow 2 \neq 0
$$
De er derved ikke uafhængige
3)
![[Lotus for two continuous random variable.png]]
$$
\begin{align}
E[XY] = \int_{0}^{1}\int_{0}^{1}xy2(x+y)dxdy =\\
\int_{0}^{1}\int_{0}^{1}xy(2x+2y)dxdy=\\
\int_{0}^{1}\int_{0}^{1}x(2xy+2y^{2})dxdy=
\int_{0}^{1}\int_{0}^{1}2x^{2}y+2xy^{2} dxdy =\\
\int_{0}^{1} \frac{3y^{2}+2y}{{3}}dy=\\
\frac{2}{3}-0 = \frac{2}{3}


\end{align}
$$
___
![[problem 32.png]]

![[Lemma 5.3 properties of covariance.png]]

$$
\begin{align}
Cov(Z,W)=Cov(11-X+X^{2}Y,3-Y) \text{   bruger regel 5}\\
\Rightarrow Cov(-X+X^{2}Y,-Y)\\
\Rightarrow 
\end{align}
$$

![[covariance.png]]
Spørg til tø
___
![[Problem 31.png]]

![[Independent random variables rules and definition for two contious random variables.png]]
$$
f_{XY}(x,y)=f_{X}(x)f_{Y}(y)
$$
$$
\frac{1}{6} = f_{X}(x)\cdot \frac{7}{24}
$$
$$
\frac{1}{6} = \frac{13}{24}\cdot \frac{7}{24}
$$
De er dermed ikke independent og vi kan ikke udnytte dette.
![[covariance.png]]
$$
Cov(X,Y)=E[XY]-(EX)(EY)
$$


![[lemma 5.2.png]]
$$
\begin{align}
E[XY] = \sum_{x_{i}\in R_{X}}\sum_{y_{j}\in R_{Y}}x_{i}y_{j}P_{XY}(x_{i}y_{j})\\
 x_{i}= 0 \Rightarrow \sum_{y_{j}\in R_{y}}0y_{j}P_{XY}(0,y_{j}) = 0\\
 x_{i}= 1 \Rightarrow \sum_{y_{j}\in R_{y}}1y_{j}P_{XY}(1,y_{j})\\
 = \sum_{y_{j}\in R_{y}} y_{j}P_{XY}(1,y_{j})\\
 = 0P_{XY}(1,0) + 1P_{XY}(1,1)+ 2P(1,2)\\
 = \frac{1}{6}+ 2\cdot \frac{1}{6} = \frac{3}{6}
\end{align}
$$
![[Definition 3.11 Expected value (= mean = average).png]]
$$P(X=0) = \frac{1}{6}+ \frac{1}{4}+ \frac{1}{8} = \frac{11}{24} $$
$$
P(X=1) = \frac{1}{8} + \frac{1}{6}  +  = \frac{11}{24}
$$
$$
E[X] = \sum_{x_{k}\in R_{X}} x_{k}P(X=x_{k}) = 0P(X=0) + 1P(X=1) = \frac{11}{24}
$$
$$
P(Y=0) = \frac{1}{6}+ \frac{1}{8} = \frac{7}{24}
$$
$$
P(Y=1) = \frac{1}{4} + \frac{1}{6} = \frac{10}{24}
$$
$$
P(Y=2) = \frac{1}{8} +  \frac{1}{6} = \frac{7}{24}
$$

$$
E[Y] = \sum_{y_{k}\in R_{k}} y_{k}P(Y=y_{k}) = 0\cdot \frac{7}{24}  + 1\cdot \frac{10}{24} + 2\cdot \frac{7}{24} = 1
$$
$$
Cov(X,Y)=\frac{3}{6} - \frac{11}{24}\cdot 1 = \frac{3}{6} - \frac{11}{24} = \frac{1}{24}
$$

Vi skal nu finde $\rho(X,Y)$ 
![[correlation coefficient.png]]
$p(X,Y) = \frac{\frac{1}{24}}{\sqrt{Var(X)Var(Y)}}=$
![[Computation of variance.png]]
$$
\begin{align}
Var(X)=E[X^{2}] - E[X]^{2}\\
= E[X^{2}] - \frac{11}{24}^{2}\\
= E[X^{2}] - \frac{121}{576}\\
= \left(0^{2} \frac{11}{24} + 1\cdot \frac{11}{24}\right) -  \frac{121}{576}\\
= \frac{11}{24} - \frac{121}{576} = \frac{143}{576}
\end{align}
$$

![[Law of unconsious statistician (LOTUS).png]]
$$
Var(Y)= (0^{2}\cdot   \frac{7}{24}+ 1^{2}\cdot \frac{10}{24}  + 2^{2}\cdot \frac{7}{24}) - 1 = \frac{7}{12}
$$
$$
\rho(X,Y) = \frac{\frac{1}{24}}{\sqrt{\frac{143}{576} \cdot \frac{7}{12}}} \approx  0.11
$$
___
![[problem 24.png]]
![[definition for a uniform distribution'.png]]
Jeg vil først her tegne område:
![[område for opgave 21.png]]
Vi ved nu at punkterne der overholder dette er:
$$
(0,1)(0,2)(1,1)(2,0)
$$
Eftersom vi ved at de er indpendent ved vi at sandsynlighed for et givent punkt kan noteres som:
$$
P_{XY}(X=x,Y=y))=f_{X}(X=x)\cdot f_{Y}(Y=y)
$$
desuden ved vi at begge er uniforme og at alle værdier har sandsynlighede $\frac{1}{2 - 0}$ Hvilket vil sige at vi få alle punkterne får stykket:
$$
P_{XY}(X=X_{j}, Y=y_{i})= \frac{1}{2} \cdot \frac{1}{2} = \frac{1}{4}
$$
Eftersom vi har 4 punkter har vi: $\frac{1}{4} \cdot  4$ hvilket giver en og dermed er forkert.
SPØRG TIL TØ.
___
![[problem 25.png]]
![[Law of total expectation continous conditional variables.png]]
$$
E[Y] = E[E[Y|X]]
$$
$$
E[Y|X] = \frac{1}{2}(x - 0) = \frac{x}{2}
$$
pr defination for expected value for uniform distribution
Derved får vi:
$$
E[Y]=E[\frac{X}{2}]
$$
Vi har nu:
![[Lotus of continuous random variabæe.png]]
$$
E[\frac{X}{2}]= \int_{0}^{\infty} \frac{x}{2}e^ {- x} dx = 0.5
$$
Derved får vi:
$$
E[Y] = \frac{1}{2}
$$
b)
![[Computation of variance.png]]
![[Law of total Variance for continous conditional variance.png]]
![[Lotus for continuous random variables.png]]

$$
\begin{align}
Var(Y) = E[Var(Y|X)]  +  Var(E[Y|X])\\
= E[Var(Y|X)]   +  Var(\frac{X}{2})\\
=E(\frac{X^{2}}{12}) + Var(\frac{x}{2})\\
= \int_{0}^{\infty} \frac{x^{2}}{12} e^ {- x} dx  +  var(\frac{x}{2})\\
= \frac{1}{6} +  Var(\frac{X}{2})\\
= \frac{1}{6} +  E[\frac{X}{2}^{2}] - E[(\frac{X}{2}]^){2} && Lotus\\
\frac{1}{6} +  0.5 - \frac{1}{4} = \frac{11}{12}\\
= \frac{5}{12}


\end{align}
$$