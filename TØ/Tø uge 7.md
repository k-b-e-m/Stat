![[Tø uge 7 - øvelse a.png]]
![[exponential distribution.png]]
![[Theorem 4.1.png]]
Vi kan her se at funktionen er stærkt voksende:
```mathpad
%$1:=(1/3)*x^3+4*x
plot(e^(2x)-1)==?
```

vi skal først finde den inverse funktion til $\gamma$ :
$$
\frac{1}{2}log(x+1)
$$

Dette bliver brugt som x1
Vi skal så herefter differencere $\gamma$:
```mathpad
%$1:=(1/3)*x^3+4*x
%$2:=[2+x^2]
diff(e^(2x)-1)==?
```

Vi kan så benytte 4.1:
$$
f_{Y}(y) =
\begin{equation}
\begin{cases}
\frac{\lambda e ^{-\lambda \frac{1}{2}log(y+1)}}{|2\cdot e^{2\frac{1}{2}log(y+1)}|} && y\in R_{y} \\
0 &&\text{if g(x)=y does not have a solution}
\end{cases}
\end{equation}
$$
Dette udtryk kan simplificeres:
$\frac{\lambda e ^{-\lambda \frac{1}{2}log(y+1)}}{2\cdot e^{log(y+1)}}$


$$
f_{Y(y)}=
\begin{equation}
\begin{cases} 
\frac{\lambda e ^{-\lambda \frac{1}{2}log(y+1)}}{2\cdot e^{log(y+1)}}&&  y \in Ry \\
0 && otherwise
\end{cases}
\end{equation}
$$

___
![[Tø uge 7 - eksamensopgave 2.png]]

![[exponential distribution.png]]
![[Theorem 4.1.png]]
1)
Vi ved nu at PMF for X er:
$$
f_{X}(x)=
\begin{equation}
\begin{cases} 
2e^{-2x} && x>0\\
0 && otherwise
\end{cases}
\end{equation}
$$
Vi skal nu differencere Z:
```mathpad
%$1:=(1/3)*x^3+4*x
%$2:=[-1+e^(2*x)]
%$3:=2*e^(2*x)
%$5:=-1+e^(2*x)
%$6:=[0,0,0]
%$7:=2*e^log(1+x)
%$8:=ye^((-1/2)*log(1+x)*y)
%$9:=(1/3)*x^3+4*x
g(x):=e^(2x)-1
diff(log(y+1))==?
```

Vi skal nu finde den inverse funktion til Z
$$
z^{-1}=e^y-1
$$
$$
f_{Z(z)}= 
\begin{equation}
\begin{cases}
\frac{2e^{-2e^{y}-1}}{\frac{1}{e^{y}}} && y>0\\
0 && otherwise
\end{cases}
\end{equation}
$$

2)
Her er udregningen ved hjælp af R
![[Tø uge 7 - eksamensopgave 2 2.png]]

___
![[Tø uge 7 - opgave 3.png]]
 Først skal vi finde stamfunktionen til vores integral:
 ```mathpad
integrate(sin(x)x)==?
```
For at finde arealet under grafen skal vi tage slutningen og trække starten fra.
```mathpad
%$1:=-cos(x)*x+sin(x)
%$4:=-cos(x)*x+sin(x)
F(x):=-cos(x)*x+sin(x)
```
```mathpad
%$1:=-cos(x)*x+sin(x)
%$4:=-cos(x)*x+sin(x)
start:=0
%$5:=0
F(x):=-cos(x)*x+sin(x)
```
```mathpad
%$1:=-cos(x)*x+sin(x)
%$4:=-cos(x)*x+sin(x)
start:=0
%$5:=0
end:=1
%$6:=1
F(x):=-cos(x)*x+sin(x)
end-start==?
```

___
![[Tø uge 7 - eksamen 20192020 opgave 2.png]]
a)
Her kan vi bruge den complementet. 
$$
P\left(X>\frac{4}{5}\right)= 1-P(X\leq \frac{4}{5})
$$
Dette kan vi regne ud fra CDF:
$$
1-P\left(X\leq \frac{4}{5}\right)= 1- (\frac{4}{5})^{4} = \frac{61}{125}
$$
Vi kan nu også regne komplementet for den anden:
$$
P(X>\frac{1}{2})=1-\left(X\leq\frac{1}{2}\right)= \frac{7}{8}
$$
Vi kan nu bruge definationen på conditional independence:
![[Conditional probability of P(A B).png]]
Dette giver os:
$$
P\left(X>\frac{4}{5}|X>\frac{1}{2}\right)= \frac{P(X>\frac{4}{5} \cap X>\frac{1}{2})}{P(X>\frac{1}{2})}
$$
Eftersom $X>\frac{1}{2} \subset X>\frac{4}{5}$ kan vi ud fra side 42 omskrive til:
$$
P\left(X>\frac{4}{5}|X>\frac{1}{2}\right)= \frac{P(X>\frac{4}{5})}{P(X>\frac{1}{2})}
$$
Vi kan nu indsætte vores værdier:
$$
P\left(X>\frac{4}{5}|X>\frac{1}{2}\right) = \frac{\frac{61}{125}}{\frac{7}{8}} = \frac{488}{875}
$$
b) Bestem middelværdien
![[Expected value for continous random variable.png]]
Her har vi dog at dens interval går fra 0 til 1. Dette giver os:
$$
EX =\int_{0}^{1} x\cdot x^{3}dx = \frac{1}{5}
$$
___
![[Tø uge 7 - Øvelse B.png]]
a)
FØLG MED TIL TØ
![[definition for a uniform distribution'.png]]
Først skal det ses at kravene for medianen vil medføre at:
$$
P(X\leq m) = P(X\geq m) = \frac{1}{2}
$$
Her kan vi finde CDF for funktionen:
først vil vi finde

b)
![[exponential distribution.png]]
$$
P(X=m)=\frac{1}{2}
$$

___
![[Tø uge 7 - problem 10.png]]
Vi skal her først finde $F_{Y}(y)$ 
The range here is $[0,\infty)$ 
Vi har så at:
$F_{Y}(y)=P(Y\leq y)$
I vores tilfælde kan dette skrives om til:
$$
P(\sqrt{|X|}\leq y)
$$
Vi benytter os så den inverse funktion:
$$
P(-y^{2}\leq X \leq y^{2})
$$
Vi kan nu integrere over vores interval:

$$
\int_{-y^{2}}^{y^{2}} \frac{1}{\sqrt{2 \pi}}\cdot e^{-\frac{x^{2}}{2}}
$$
Eftersom vores range først starter fra 0:
$$
\int_{0}^{y^{2}} \frac{1}{\sqrt{2 \pi}}\cdot e^{-\frac{x^{2}}{2}}
$$
Dette kan omskrives til:
$1 - \frac{e^{-\frac{y^4}{2}}}{\sqrt{2\pi}}$

Dermed har vi at:
$$F_{Y}(y)= \begin{equation}
\begin{cases} 
1 - \frac{e^{-\frac{y^4}{2}}}{\sqrt{2\pi}}&& y\geq 0\\ 
0 && otherwise
\end{cases}
\end{equation}$$

for at få $f_{Y}(y)$ skal vi differentire:
her får vi:
$$
f_{Y}(y) =
\begin{equation}
\begin{cases} 
\frac{\sqrt{2}y^3e^{-\frac{y^4}{2}}}{\sqrt{\pi}} && y>0\\ 
0 && otherwise
\end{cases}
\end{equation}
$$


___
