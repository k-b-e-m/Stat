![[problem 1.png]]
vi vælger tallet 4.
a)
![[definition for a uniform distribution'.png]]
her er a og b så begge 4. Dette giver os udtrykket:
$\frac{1}{4-4} = 0$
b)
[[Forlæsning 10]] - EX af uniform
$\frac{a+b}{2} = \frac{2+6}{2}=4$
___

![[problem 2.png]]
a)
ud fra regel 2 i denne
![[known things for continous random variables.png]]
ved vi at:
$$
1=\int_{0}^{\infty} ce^{-4x}
$$
Dette kan omskrives til:
$$
1=\int_{0}^{\infty} ce^{-4x}
$$
$$
1=c\int_{0}^{\infty}e^{-4x}
$$
$$
1=c\frac{1}{4}
$$
$c=4$
b) 
$$
F_{X}(x)=\int_{0}^{x}4e^{-4u}du = 1-e^{4x} 
$$
$$
F_{X(x)}=
\begin{equation}
\begin{cases} 
1-e^{-4x}&& x\geq 0\\ \\
0 && otherwise
\end{cases}
\end{equation}
$$
c)
Find $P(2<X\leq 5)$ 
Vi ved udfra 3. i [[known things for continous random variables.png]] at:
$$
P(a<X\leq b) = F_{X}(b)-F_{X}(a)
$$
$F_{X}(5)-F_{X}(2)=(1-e^{-4\cdot2})-(1-e^{-4\cdot5})\approx 0.0003354$

d)
![[Expected value for continous random variable.png]]
$EX=\int_{0}^{\infty}xf_{x}(x)dx=\int_{0}^{\infty}x4e^{-4x}dx = \frac{1}{4}$
___

![[Øvelse A.png]]

Ligger i R dokumentet
___
![[problem 3.png]]
a)
Kigger på  [[example 4.5 with solutions.png]]
$E[X^{n}]=\int_{0}^{1}x^{n}(x^{2}+\frac{2}{3})dx= \frac{5n+9}{3n^{2}+12n+9}$ 
b)
![[varians for a continuos random variable.png]]
$var(x)=\frac{5\cdot2+9}{3\cdot2^{2}+12\cdot2+9}-(\frac{5+9}{3+12+9})^{2} = \frac{59}{720}$

___
![[problem 5.png]]
a)
$R_{y}=(0,4]$

b)
find fy(y)
$$
\frac{dF_{y}(y)}{dy} = \begin{equation}\begin{cases}
\frac{5}{64}y^{\frac{3}{2}} && y\in R_{Y} \\
0 && otherwise
\end{cases}\end{equation}
$$
c)
$EY = \int_{0}^{4} y\left(\frac{5}{64}y^{\frac{3}{2}}\right)dy = \int_{0}^{4}\frac{5}{64}y^{\frac{5}{2}} dy = \frac{5}{64}\left[\frac{2}{7}y^{\frac{7}{2}}\right]_{0}^{4} = 2.85$







___



![[Tø uge 6 - øvelse B.png]]

___
![[Tø uge 6 øvelse c.png]]

