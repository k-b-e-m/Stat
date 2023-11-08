![[Aflevering 8 - beskrivelse 1.png]]
![[Aflevering 8 problem 9.png]]
a)

Vi kan her tegne mængden C:
![[C er flot.png]]

Dette er Joint PMF for $f_{XY}(xy)$ inden for vores range C. 

|      |y=-2      |y=-1      |y=0      |y=1      |y=2      |
|:-----|:-----|:-----|:-----|:-----|:-----|
|x=-1      |0      |$\frac{1}{11}$      |$\frac{1}{11}$      |$\frac{1}{11}$      |0      |
|x=0      | $\frac{1}{11}$     |   $\frac{1}{11}$   | $\frac{1}{11}$     |    $\frac{1}{11}$  |     $\frac{1}{11}$ |
|x=1     |   0 |    $\frac{1}{11}$  |  $\frac{1}{11}$    |  $\frac{1}{11}$    |  0    |

Vi skal nu finde den marginale PMF for X og Y.
For at finde den marginale PMF for henholdsvis X og Y kan man bruge dette:
![[marginal PMF of X and Y.png]]
Vi vil nu starte for X:
$$
\begin{align}
P_{X}(X=1)=P(X=1,Y=-2)\\
+P(X=1,Y=-1)\\
+P(X=1,Y=0)\\
+P(X=1,Y=1)\\
+P(X=1,Y=2)\\
\end{align}
$$
Det vil sige dette giver:
$$
\begin{align}
P_{X}(X=-1)=0
+\frac{1}{11}+\frac{1}{11}+\frac{1}{11}+ 0\\
= \frac{3}{11}
\end{align}
$$

Den samme fremgangsmåde benytter vi os med ved X=0 og X=-1 og får:
$$
\begin{align}
P_{X}(X=0)=\frac{1}{11}
+\frac{1}{11}+\frac{1}{11}+\frac{1}{11}+ \frac{1}{11}\\
= \frac{5}{11}
\end{align}
$$
$$
\begin{align}
P_{X}(X=1)=0
+\frac{1}{11}+\frac{1}{11}+\frac{1}{11}+ 0\\
= \frac{3}{11}
\end{align}
$$
Derved får vi den marginale PMF for X til at være:
$$
\begin{equation*}
f_{X}(x)=
\begin{cases} 
\frac{3}{11} && X=-1\\
\frac{5}{11} && X=0 \\
\frac{3}{11} && X=1 \\
0 && otherwise\\
\end{cases}
\end{equation*}
$$
Vi skal nu benytte os af samme strategi for at finde den marginale PMF for Y:
$$
\begin{align}
P_{Y}(Y=-2) =
P(Y=-2,X=-1)\\+P(Y=-2,X=0)\\+P(Y=-2,X=1)=\\
0 + \frac{1}{11} + 0 = \frac{1}{11}
\end{align}
$$
Vi skal nu ligeledes gøre dette for Y=-1,0,1 og 2.

$$
\begin{align}
P_{Y}(Y=-1)=\frac{1}{11}+\frac{1}{11}+\frac{1}{11}= \frac{3}{11}
\end{align}
$$
$$
\begin{align}
P_{Y}(Y=0)=\frac{1}{11}+\frac{1}{11}+\frac{1}{11}=\frac{3}{11}
\end{align}
$$
$$
\begin{align}
P_{Y}(Y=1)=\frac{1}{11}+\frac{1}{11}+\frac{1}{11}=\frac{3}{11}
\end{align}
$$
$$
\begin{align}
P_{Y}(Y=2)=0+\frac{1}{11}+0=\frac{1}{11}
\end{align}
$$
Med disse udregninger for vi den marginale PMF:
$$
\begin{equation}
f_{Y}(y)=
\begin{cases}
\frac{1}{11} && Y=-2 \\
\frac{3}{11} && -2<Y<2 \\
\frac{1}{11} && Y=2
\end{cases}
\end{equation}
$$
Dermed har vi nu fundet de to marginale PMF for X og Y.
___
b) 
Vi skal her finde den conditional PMF for X når Y=1.
Til dette benytter vi os af dette:
![[Conditional PMF of two random variables.png]]
Det vil sige at vi i vores tilfælde skal finde:
$$
P_{X|Y=1}(x_{i})=\frac{P(X=x_{i}|Y=1)}{P(Y=1)}
$$
Vi ved desuden ved at finde den marginale PMF for Y at P(Y=1) er $\frac{3}{11}$
Desuden kan vi finde $P(X=x_{i}|Y=1)$ ved brug af vores joint PMF. Her har vi nemlig sandsynligheden for dem alle. Derved får vi de 3 udregninger:
$$
P_{X|Y=1}(-1)= \frac{\frac{1}{11}}{\frac{3}{11}}
$$
$$
P_{X|Y=1}(0)= \frac{\frac{1}{11}}{\frac{3}{11}}
$$
$$
P_{X|Y=1}(1)= \frac{\frac{1}{11}}{\frac{3}{11}}
$$
$\frac{\frac{1}{11}}{\frac{3}{11}}=\frac{1}{3}$
Derved får vi den følgende conditional PMF:
$$
P_{X|Y=1(x)}= 
\begin{equation}
\begin{cases}
\frac{1}{3} && -1\geq x \leq 1 \\
0 && otherwise
\end{cases}
\end{equation}
$$
___
c) Vi skal her vise om de 2 stokastiske er ufhængige
Til dette kan vi bruge følgende:
![[Independence of two random variables.png]]
Vi kan her tjekke med en given værdi. Lad os tage når X=1 og y = -2:
$$
P_XY(1,-2)=P_{X}(1)P_{Y}(-2)
$$
$$
0 = \frac{3}{11}\cdot \frac{1}{11} = \frac{3}{121}
$$
Eftersom dette ikke er sandt er de dermed ikke ufhængige.
___
d)
Vi skal her finde $E[XY^{2}]$
![[LOTUS for Two Discrete Random Variables.png]]
I vores tilfælde er $g(X,Y)=X\cdot Y^{2}$
Det vil altså sige at vi skal udregne dette:
$$
E[g(X,Y)]=\sum_{(x_{i},y_{j})\in R_{XY}}x_{i}\cdot y_{i}^{2}\cdot P_{XY}(x_{i},y_{j})
$$
Vi kan nu regne summen for dette:
$$
\sum_{(x_{i},y_{j})\in R_{XY}}x_{i}\cdot y_{i}^{2}\cdot P_{XY}(x_{i},y_{j}) =
\begin{align}
-1\cdot -2^{2} \cdot 0 +\\
-1\cdot -1^{2} \cdot \frac{1}{11} +\\
-1\cdot 0^{2} \cdot \frac{1}{11} +\\
-1\cdot 1^{2} \cdot \frac{1}{11} +\\
-1\cdot 2^{2} \cdot 0 +\\
0\cdot -2^{2} \cdot \frac{1}{11} +\\
0\cdot -1^{2} \cdot \frac{1}{11} +\\
0\cdot 0^{2} \cdot \frac{1}{11} +\\
0\cdot 1^{2} \cdot \frac{1}{11} +\\
0\cdot 2^{2} \cdot \frac{1}{11} +\\
1\cdot -2^{2} \cdot 0 +\\
1\cdot -1^{2} \cdot \frac{1}{11} +\\
1\cdot 0^{2} \cdot \frac{1}{11} +\\
1\cdot 1^{2} \cdot \frac{1}{11} +\\
1\cdot 2^{2} \cdot 0\\
= 0 

\end{align}
$$
Derved er $E[XY^{2}]=0$
___
