[[8.4 Hypothesis Testing]]
Ved type 1 fejl ønsker vi et lille $\alpha$, da sandynligheden for type I fejl derved bliver højst $\alpha$ :
$$
P(W\not \in A: \Theta)\leq \alpha
$$

$\alpha$ kan antage alle værdier. Ved en stor værdi kan vi bare afvise meget og ved en lille kan vi bare acceptere alt. Vær opmærksom på at det stadig handler om type I fejl.

Type II fejl er når man acceptere noget selvom det er forkert.

#definition
Type II fejl:
accept $H_{0}$ selvom $H_{1}$ Gælder.
$$
\beta(\Theta) = P(\text{type II fejl}:\Theta) = P(W\in A : \Theta)
$$
A = acceptence region.
___

"Styrken af en test"
$$
\pi(\theta)=1 - \beta(\theta)
$$
Ønskeligt:
$\beta$ lille $\Leftrightarrow$ $\pi$($\theta$) stor

trade off:
$\alpha$ lille $\Leftrightarrow$ $\beta$ stor


traditionelt
1. Vælg $\alpha$ (typisk 0.05)
2. find test med niveau $\alpha$ 
3. blandt dem find test med størst styrke.
3, kan være svær så nogle gang bruger man 3'
3'. find test i 2 med hvor P(W$\not\in$ A,$\Theta$ ) = $\alpha$ for mindst et $\Theta$ $\in$ $S_{0}$ 

___

Fremgangsmåde:
![[Definition 8.3.png]]
1. Find W (en statistik)
2. Find A (acceptance region)
	1. Afgør hvad der er kritisk for W
3.  accept, $H_{0} \Leftrightarrow W\in A$
	forkast, $H_{0} \Leftrightarrow w\not \in A$
___
#Example 
8.7'
1) W=  $\bar X_{1}  +  \cdots \bar X_{20} $ ~Binomial(20,$\frac{1}{20}$) (under $H_{0}$)

2) Find K
0.05 = $\alpha$ $\geq P(W>k;1) = 1 - P(W\leq k ; 1)  = 1  -  F_{w}(k)$
$$
0.05 \geq 1 -  F_{W}(k)
$$
$$
F_{W}(k)\geq 1 - 0.05 = 0.95
$$
$$
k = qbinom(0.95,20,0.1)
$$
$$
k = 4 \Rightarrow A = ( - \infty, 4]
$$
___

#### Tosiddet tests
$H_{0} = \mu_{0}$ (simple hypotese)
$H_{1} \not = \mu_{0}$

Hvis stikprøven er normalfordelt og kendt $\sigma$ :

Eksempel 8.24
![[Eksempel 8.24 with solution.png]]
___
Normalfordeling med ukendt sigma i anden
$$
W = \frac{\bar X  -  \mu_{0}}{\frac{S}{\sqrt{n}}} \sim T(n - 1) \text{ : t - fordeling}
$$
___

Hvis vi ikke kender fordelingen og n er stor (n er større end 30 50 stykker):
$$
W=\frac{\bar X - \mu_{0}}{\frac{S}{\sqrt{n}}} \rightarrow Z\sim N(0,1)
$$
Dette skyldes law of large numbers

![[table 8.2 - two sided.png]]
___
![[table 8.3 one sided.png]]
![[table 8.4 - one sided.png]]

på side 487 i bogen får vi at vide at:
$$
\begin{align}
H_{0} : \mu \leq \mu_{0}\\
H_{1} : \mu > \mu_{0}\\
\text{Giver den samme test som}\\
H_{0} : \mu = \mu_{0}\\
H_{1} : \mu > \mu_{0}\\
\end{align}
$$
___
Tommelfinger regel

Det kan opdeles i 2 situationer:

normalt og kendt sigma og asymptotisk
Her bruger vi Z.

Anden sitation:
Normalfordelt med ukendt sigma:
Her bruger vi t

Ved to sidet:
bruger vi $\frac{\alpha}{2}$
Ved ensiddet:
bruger vi bare $\alpha$ 
___
