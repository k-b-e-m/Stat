defination for X,Y:
$$
P_{X,Y}(x,y):=P(X=x,Y=y)=P\{X=x\}\cap P\{Y=y\}
$$
[[5.1 Two Discrete Random Variables]]
___
#Example 
X~Bernoulli(p)
Y~Bernoulli(q)
$R_{X}=\{0,1\}$
$R_{Y}=\{0,1\}$
$R_{XY}= \{(0,0),(0,1),(1,0),(1,1)\} = R_{X} \times R_{Y}$
___
![[Two Discrete Random Variables summation of 1.png]]
___

![[Law of total probability for two random variables.png]]
___
Vigtigt! Man kan gå fra den simultane til de marginale men ikke den anden vej. Altså:
$$
P_{X,Y(x,y)}\Rightarrow P_{X}(x),P_{Y}(y)
$$
Men ikke den anden vej.
___
Eksempel 5.1

$$
\begin{matrix}
    & Y=0 & Y=1 & Y=2 \\
X=0 & \frac{1}{6}    & \frac{1}{4}    & \frac{1}{8}    \\
X=1 &    \frac{1}{8} &  \frac{1}{6}   &    \frac{1}{6}
\end{matrix}
$$
a) beregn $P(X=0, Y\leq 1)$

$R_{X} =\{0,1\}$
$R_{Y}=\{0,1,2\}$
Dette kan beregnes ved:
$$
P(X=0, Y\leq 1)=P(X=0,Y=0) + P(X=0,Y=1)
$$

$$
P(X=0, Y\leq 1)= \frac{1}{6}+\frac{1}{4} = \frac{5}{12}
$$
B) Beregn de marginale PMF's for $P_{X},P_{Y}$ 
$P_{X}(1) = \sum_{y_{j}\in R_{Y}} P_{X,Y}(1,y) = P(X=1,Y=0) P(X=1,Y=1) P(X=1,Y=2) = \frac{1}{8}+\frac{1}{6}+\frac{1}{6}= \frac{11}{24}$
$P_{X}(0)=1-P(X=1) = \frac{13}{24}$ fordi der kun er 2 udfald for X. [[Law of total probability for two random variables.png]]
___

