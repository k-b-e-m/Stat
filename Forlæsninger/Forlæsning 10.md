[[4.1 Continuous Random Variables and their Distributions]]
Bergening for sandsynlighed for en kontinuer stokastisk variabel er:
![[Expected value for continous random variable.png]]
![[Lotus of continuous random variabæe.png]]
![[varians for a continuos random variable.png]]
![[known things for continous random variables.png]] ^decb6a
___
#Example 
Hvis vi har et interval a<b. 
a) $P(X\in[a,b]) = \int_{a}^{b}f_X(x)dx$

b) P(X=a) =0 
Det er lig med 0 fordi at vi beregner det i forhold til areal. fordi at arealet for a på grafen er lig nul. Det vil sige at for kontinuere variabler er sandsynligheden for konstanter altid lig med 0, vi regner her kun i  intervaller. Argumentation kig på:  [[known things for continous random variables.png]]

c) $F_{X}-F_{X}(a)(B)P(a<X\leq b))$ 
$=P(a<X\leq b) + P(X=a)$
$= P(a\leq X \leq b)$
I kontinuere er $<$og $\leq$ Det samme, vist for oven.
Derved har vi afledt formlen:
$F_{X}(b)-F_{X}(a)=\int_{a}^{b}f_{X}(x)dx$ 
___
#Example 
$X~Uniform(a,b)$ hvor a<b [[4.2 Special Distribution]]
$$
\begin{equation}
F_{X}(x)=
\begin{cases}
\frac{1}{b-a}\\
0 && otherwise
\end{cases}
\end{equation}
$$
b-a fordi at det er grundlinjen på den firkant der er i firkanten. 
$R_{X}=[a,b]$
CDF: $x\in [a,b]$  $F_{X}(x)=P(X\leq x)$
							$= \int_{-\infty}^{x}f_{X}(t)dt$
							$= \int_{a}^{x}\frac{1}{b-a}dt=\frac{1}{b-a} \cdot \int_{a}^{x}1\cdot dt$ 
							$= \frac{1}{b-a}[t]_{a}^{x}=\frac{1}{b-a}(x-a) = \frac{x-a}{b-a}$ 
___
[[Monte carlo integration]]
___
EX for uniform= $\int_{-\infty}^{\infty} f_{X}(x)dx$
Når man kender range/intervallet kan man skrive:
$\int_{a}^{b}x\frac{1}{b-a}dx = \frac{a+b}{2}$ hvor $R_{x}=[a,b]$
___
Hvis X er countable så er Y=g(x) også countable

$X~Uniform(0,1)$
$$g(x) = \begin{equation}
\begin{cases} \\
1 &&x\geq0.5\\ \\
0 &&x\leq0.5
\end{cases}
\end{equation}$$
$P(X\leq 0.5) = F_{X}\left(\frac{1}{2}\right)= \frac{\frac{1}{2}-0}{1-0} = \frac{1}{2}$
___
Menti hvilke af disse er strengt voksende:

````functionplot
---
title: The random graph
xLabel: Time
yLabel: Cost
bounds: [0, 10, 0, 50]
disbaleZoom: 1
grid: true
---
g(x)=1
f(x)=sqrt(x)
t(x)=x^2
````
Den røde er strengt voksende når x er større en nul, det samme for den grønne. Konstanter er ikke strengt voksende.

___
#Example 

![[example 4.8 with solution.png]]
___
![[Theorem 4.1.png]]
alternativ form: ^8acfd9
$$
f_y(y)=
\begin{equation}
\begin{cases}
|h'(y)|f_x(h(y)) &&  y\in R_{Y} \\ \\
0 && otherwise
\end{cases} 
\end{equation}
$$
Hvis theroem 4.1 ikke kan  bruges kan man bruge samme metode som [[example 4.8 with solution.png]]
___
#Example 
![[example 4.9 with solutions.png]]
[[#^8acfd9]] - alternativ form for theorem 4.1
___
![[exponential distribution.png]]
$\lambda >0$
hvis:
$$
\begin{equation}
\begin{cases}  \\
\lambda e^{-\lambda x} && x>0 \\
0 && otherwise
\end{cases}
\end{equation}
$$
CDF:
$F_{X}(x)-P(X\leq x) = P(X \in (-\infty , x])$
x>0: = $\int _{-\infty}^{x}f_{X}(t)dt =\int_{0}^{X}f_{X}(t)dt$
		$=\int_{0}^{x}\lambda e ^{-\lambda t} = 1-e^{-\lambda x}$
$$
F_{X}(x) =
\begin{equation}
\begin{cases}
1-e^{-\lambda x} && x>0 \\
0 && otherwise
\end{cases}
\end{equation}
$$
