![[Tø uge 8 - problem 1ø.png]]
a)
$P(X=2,Y=2) + P(X=1,Y=2) = 0 + \frac{1}{12}$ 
___
b)
VI skal nu finde de marginale PMF for X og Y.
![[marginal PMF of X and Y.png]]
For X:
$$
P_{X}(1)=\sum_{y_{j}\in R_{Y}}PXY(1,y_{j}) = \frac{1}{3}+ \frac{1}{12} = \frac{5}{12}
$$
$$
P_{X}(2)=\sum_{y_{j}\in R_{Y}}PXY(2,y_{j}) = \frac{1}{6}+ 0 = \frac{1}{6}
$$
$$
P_{X}(4)=\sum_{y_{j}\in R_{Y}}PXY(4,y_{j}) = \frac{1}{3}+ \frac{1}{12} = \frac{5}{12}
$$

$$
P_{X}(x)=
\begin{equation}
\begin{cases} 
\frac{5}{12}&& x=1 \\
\frac{1}{6}&& x=2 \\
\frac{5}{12}&& x=4 \\
0 && otherwise \\
\end{cases}
\end{equation}
$$
For Y:

$P_{Y}(1) = \sum_{x_{j}\in R_{X}} P_{XY}(x_{j},1) = \frac{1}{3}+ \frac{1}{6}+ \frac{1}{12} = \frac{7}{12}$
$P_{Y}(2)= \sum_{x_{j}\in R_{X}} P_{XY}(x_{j},2) = \frac{1}{12}+ 0 + \frac{1}{3} = \frac{5}{12}$
$$
P_{Y}(y) =
\begin{equation}
\begin{cases}
\frac{7}{12}&& y=1 \\
\frac{5}{12}&& y=2  \\
0 && otherwise \\
\end{cases}
\end{equation}
$$
___
c)
![[Conditional PMF of two random variables.png]]
 $$
 P(Y=2|X=1) = \frac{P(Y=2|X=1)}{P(X=1)} = \frac{\frac{1}{12}}{\frac{5}{12}}= \frac{1}{5} 
 $$
 
d)
![[Independence of two random variables.png]]
$$
P_{XY}(Y=1,X=1)=P_{X}(X=1)P_{Y}(Y=1) \Rightarrow \frac{1}{3}= \frac{5}{12}\cdot \frac{7}{12} \Rightarrow \frac{1}{3} \neq  \frac{3}{28 }
$$
Derved er de ikke ufhængige.
___
![[Tø uge 8 - problem 2.png]]
Lad os her definere Z som funktionen g(x,y).
Vi finder nu alle mulige outcomes:
Tabel over resultater for g(x,y)

|      |   Y=1   |Y=2      |
|:-----|:-----|:-----|
|  X=1    |   -1   |   -3   |
|   X=2   |   0   |  -2    |
|    X=4  |   2   |   0   |

Vi kan nu ved hjælp af denne og den tidligere find $P_{Z}(z)$
$$
P_{Z}(z=2) = P_{XY}(X=4,Y=1) = \frac{1}{12}
$$
$$
P_{Z}(z=0) = P_{XY}(X=4,Y=2) + P_{XY}(X=2, Y=1)= \frac{1}{3}+ \frac{1}{6}= \frac{6}{12}
$$

$$
P_{Z}(z=-1) = P_{XY}(X=1,Y=1) = \frac{4}{12}
$$

$$
P_{Z}(z=-2) = P_{XY}(X=2,Y=2) = 0
$$

$$
P_{Z}(z=-3) = P_{XY}(X=1,Y=2) = \frac{1}{12}
$$
Derved har vi PMF for Z:
$$
P_{Z}(z) =
\begin{equation}
\begin{cases} 
\frac{1}{12} && z=-3 \\
\frac{4}{12}&& z=-1 \\
\frac{1}{12}&&z=2 \\ \\
\frac{6}{12} && z=0
0 && otherwise \\
\end{cases}
\end{equation}
$$
 
___
b)
$P(X=2|Z=0) = P(X=2|X-2Y=0)$
Vi ved derfor at X skal være 2 i stykket til højre:
$$
P(X=2|2-2Y=0)
$$
Udfra tidligere udregning  og simple ligningsløsning ved vi at dette vil sige at Y=1. Det vil sige vi nu skal finde $P_{XY}(4,2)$ som vi ved er $\frac{1}{3}$ Brug Conditional fordi at vi skal kigge på at der er flere muligheder.

___

![[Tø uge 8 - Problem 4.png]]
a)
$P_{XY} = \frac{1}{2^{k+l}}= \frac{1}{2^{k}} \cdot \frac{1}{2^{l}}$ 
De marginale PMF for K og L er derfor henholdsvist de 2 på hver side af gangetegnet.
![[Independence of two random variables.png]]
Vi ved dermed også at de er ufhængige.
___
b)
lad os her definere en funktion g som: $g(x,y)=x^2+y^2$
Og vi skal her finde:
$$
P(g(x,y)\leq 10)
$$
Det område vi altså skal finde sandsynligheden indenfor kan altså tegnes som:
![[Tø uge 8 opgave 4 rigtig tegning.png]]
Eftersom det er en tælbar mængde kan vi nu omremse alle par i dette område og regne deres sandsynligheder ud:
$$
P(g(x,y)\leq 10) =
\frac{1}{2^{1+1}}+\frac{1}{2^{2+1}}+\frac{1}{2^{3+1}}+\frac{1}{2^{1+2}}+\frac{1}{2^{2+2}}+\frac{1}{2^{1+3}} =
$$
$$
\frac{1}{4}+ \frac{1}{8} + \frac{1}{16} + \frac{1}{8}+ \frac{1}{16} + \frac{1}{16} = \frac{11}{16}
$$
___

![[Tø uge 8 eksmanesopgave 2020 opgave 2.png]]
```R
N = 10000
X= rpois(N,100)
Y = mean(log(X+1))
cat(Y)
```
resultat ved 3 simuleringer:
4.609543, 4.610457, 4.609891
