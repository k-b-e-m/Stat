![[Tø uge 5 - problem 12.png]]

$R_{X}$ for CDF er {-2,...2}
![[Tø uge 5 -problem 12 - tegning.png]]
	$P_X(|X|=1)$ = P(X=-1) + P(X=1) = 0.5a
___
![[Tø uge 5 - problem 13.png]]
$R_{X} = \{0,...3\}$

$$
\begin{equation}
P_{x}(X) = 
\begin{cases}
 0 & \text{otherwise} \\
 \frac{1}{6} & \text{X=0} \\
 \frac{2}{6} & \text{X=2} \\
 \frac{1}{4} & \text{X=2} \\
 \frac{1}{4} &  \text{X=3} \\
 \end{cases}
\end{equation} 
$$

___
![[Tø uge 5 - problem 14.png]]
$R_{X}= \{1,2,3\}$
a)
![[Definition 3.11 Expected value (= mean = average).png]]
EX = $\Sigma_{x_{k}\in R_{X}} x_{k}P_{X}(x_{k}) = 1\cdot 0.5 + 2\cdot 0.3 + 3 \cdot 0.2 = 1.7$
$Var(X) = E[X^{2}]-[EX]^{2}= E[X^2]-1.7^{2}$   
$E[X^{2]-1.7^{2}}= \Sigma_{x_{k}\in R_{X}} x_{k}^{2}\cdot P_{X}(x_{k})$  = 3.5  - [[Law of unconsious statistician (LOTUS).png]]
$Var(X) = E[X^{2}]-[EX]^{2}= 3.5-1.7^{2} = 0.61$
$SD(X) = \sqrt{0.61} \approx 0.78$
c)
$EY = \Sigma_{x_{k}\in R_{x}} \frac{2}{x_{k}}\cdot P_{x_{k}}(x_{k)} = \frac{2}{1}\cdot 0.5 + \frac{2}{2} \cdot  0.3 + \frac{2}{3}\cdot 0.2 \approx 1.4333$
___



![[Tø uge 5 - problem 16.png]]



Range of Y:
$R_{y}=\{0,\cdots ,5\}$ eftersom den mindste værdi den kan få er 0 og den største er 5
PMF = 


$$
\begin{equation}
P_{Y}(k) = 
\begin{cases}
 0 & \text{otherwise} \\
 \frac{11}{21} & \text{k=0} \\
 \frac{1}{21} & \text{k=1,2,3,4} \\
 \frac{6}{21} & \text{k=5}
 \end{cases}
\end{equation} 
$$
___
![[Tø uge 5 - øvelse A.png]]

PMF for X = 
$$
\begin{equation}
P_{X}(k) = 
\begin{cases}
 \frac{1}{4}(1-\frac{1}{4})^{k-1} & {k\in \mathbb{N}}  \\
0 & \text{otherwise} \\
 \end{cases}
\end{equation} 
$$

$$
R_{y}=\{|X-3||x\in R_{x}\}
$$

$$
R_{y} = \mathbb{N}
$$
For at finde PMF for Y:
$P_{y}(1)=P_{x}(X=2) + P_{x}(X=4) = \frac{3}{16} +\frac{27}{256} = \frac{75}{256}$

$$P_{y}(2)=P_{x}(X=1) + P_{x}(X=5) =\frac{1}{4}+\frac{81}{1024} =\frac{337}{1024} $$
$$
\begin{equation}
P_{Y}(y) = 
\begin{cases} \\
\frac{9}{64} & {y=0}  \\ \\
 \frac{75}{256} & {y=1}  \\ \\
\frac{337}{1024} & {y=2}  \\ \\
\frac{1}{4}(1-\frac{1}{4})^{y+3-1} & {y>2}  \\ \\
0 & \text{otherwise} \\
 \end{cases}
\end{equation} 
$$


___

![[Tø uge 5 - øvelse B.png]]
Følg med til TØ
___
![[Tø uge 5 - problem 19.png]]
$Y = -2X+3$
$E[-2x+3] = \Sigma_{x_{k}\in R_{X}} (-2x_{k}+3)P_{x}(X=x_{k}) = 1$
$EY^{2} = 9$
Udfra [[Example 3.18.png]] 
![[Example 3.18.png]]
Ved vi at vi kan omskrive EY til :
$$E[-2x+3] = \Sigma_{x_{k}\in R_{X}} (-2x_{k}+3)P_{x}(X=x_{k})$$
$$E[-2x+3] = -2EX+3=1$$
Ved at solve dette får vi: $$EX = 1$$


Kan vi først regne Var(Y) ud:
$$
Var(Y)=E[Y^{2}]-EY^{2=}=9-1=8
$$
Ved brug af [[Theorem 3.3.png]]
$Var(aX+b)=a^{2}Var(X)$
$Var(Y)=-2^{2}Var(x) =4 \cdot Var(X)$
$Var(X)=8/4=2$

___
![[Tø uge 5 - problem 20.png]]
a)
$$
\begin{equation}
P_{X}(k) = 
\begin{cases} \\
\frac{1}{10} & {k=1}  \\ 
\frac{2}{10} & {k=2}  \\ 
\frac{3}{10} & {k=3}  \\ 
\frac{2}{10} & {k=4}  \\ 
\frac{1}{10} & {k=5}  \\ 
\frac{1}{10} & {k=6}  \\\\
0 & \text{otherwise} \\
 \end{cases}
\end{equation} 
$$ $$EX ={1\cdot \frac{1}{10} + 2\cdot \frac{2}{10} + 3\cdot \frac{3}{10} + 4\cdot \frac{2}{10} + 5\cdot \frac{1}{10} + 6\cdot \frac{1}{10}} = 3.3 $$
ved brug af [[Definition 3.11 Expected value (= mean = average).png]]

b)
$R_{y}={1,...,6}$
$$
\begin{equation}
P_{Y}(y) = 
\begin{cases} \\
\frac{1}{33} & {y=1}  \\ 
\frac{4}{33} & {y=2}  \\ 
\frac{9}{33} & {y=3}  \\ 
\frac{8}{33} & {y=4}  \\ 
\frac{5}{33} & {y=5}  \\ 
\frac{6}{33} & {y=6}  \\\\
0 & \text{otherwise} \\
 \end{cases}
\end{equation} 
$$
 $$EX ={1\cdot \frac{1}{33} + 2\cdot \frac{4}{33} + 3\cdot \frac{9}{33} + 4\cdot \frac{8}{33} + 5\cdot \frac{5}{33} + 6\cdot \frac{6}{33}} = 3.9 $$
 ---
 