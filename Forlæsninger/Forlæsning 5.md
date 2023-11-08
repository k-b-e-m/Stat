#lecture 
[[Definition 1.2 Conditionally independent.png]]
#Example 
![[example 1.27.png]]
vis at A og B er ikke uafhængige.
$P(C) = \frac{1}{2} = P(C^c)$ Sandsynligheden for at vælge den ærlige mønt.
$P(A|C) = \frac{1}{2}$ Sandsynligheden for at kaste en krone i første kast.
$P(B|C) = \frac{1}{2}$ Sandsynligheden for at kaste en krone i andet kast.
$P(A\cap B |C) = \frac{1}{4}$ sandsynligheden for at få krone i det første og andet kast givet den ærlige mønt.
$P(A\cap B | C) = P(A|C)P(B|C) = \frac{1}{4}$ Derved er A og B ufhængige givet C.
[[Law Of Total Probability.png]] 
$P(A)= P(A|C)P(C) + P(A|C^{c})P(C^{c})$ 
$P(A) = \frac{1}{2} \frac {1}{2} +1\cdot \frac{1}{2} = \frac{3}{4}$
$P(B)... = \frac{3}{4}$
$P(A\cap B) = P(A\cap B|C)P(C) + P(A\cap B | C^c)P(C^c)$ for at vise om A og B er ufhængige:
				$= P(A\cap B|C)P(C) + P(A\cap B | C^{c)P(C^{c)}=}\frac{10}{16}$
$P(A)P(B) = \frac{9}{16}$
$\frac{9}{16} \neq \frac{10}{16}$ derved er A og B ikke ufhængige, men de er ufhængige givet C.

#### Stokastiske variabler



#Example 
![[example 3.1.png]]
$S = \{ P,K\} x \{ P,K\} ... 5 gange$
Derved får vi $2^5$ muligheder på grund af [[Multiplication principle.png]]
X = antal af K i de 5 kast.
Der kan være {0,1,2,3,4,5} k i 5 kast. - Dette er en stokastisk variabel.
Range i example 3.1 er 0-5.

___

Def en stokastisk variable er:
![[stokastisk variabel , Random variables.png]]
![[kapitel 3 range of x (R_x).png]]

#Example 
X= antal øjne ved et ærlig terningkast
$R_{x}=\{1,2,3,4,5,6\}$
X= antal kast indtil jeg ser 6 for første gang.
$R_{x}= {1,2,3....} = \mathbb{N}$
X = ventetid til en hændelse indtræffer
$R_{X}=[0,\infty)$ 
___

![[Diagram.svg]]

$R_{x}$ er en diskret stokastisk variabel hvis $R_x$ er tællelig
![[random discrete variable.png]]
$R_x$ er en kontinuerlig stokastisk variabel hvis $R_x$ er utællelig.

---

Probability mass function (PMF)
#notation
X,Y,Z = stokastiske variabler
x,y,z = mulige værdier

$\{X=x\} = \{s \in S : X(s) =x\}$
alle mulige udfrald i s Så X viser x.
$P(X\in A) = P(\{X\in A\}) = P_x(A)$ - notation
____
![[definition 3.1.png]]

![[properties of PMF.png]]
Axioms for PMF. [[Proof of PMF]]
for $P_x$ må man regne som med sandsynlighed fra tidligere [[1.2. Set Theory]][[1.3 Random Experrments and probabilities]] [[1.4 Conditional Probability]]


![[definition 3.2 independent random variables.png]]

#Example 

Vi kaster en mønt 3 gange.
X= antal kroner.
$S=\{P,K\}\texttimes \{P,K\} \texttimes \{P,K\}$
$P_X(0)=\frac{1}{8}$
$P_{x}(1) = \frac{3}{8}$
$P_{x}(2)=\frac{3}{8}$
$P_{x}(3) = \frac{1}{8}$

Er $X \in \{0,1\}$ og $X \in \{0,3\}$ uafhænginge
$P_x(0)=\frac{1}{8}$ 
 $P(X\in \{0,1\}) = P_{x(0)}+ P_{x(1)}= \frac{1}{2}$
 $P(X\in \{0,3\}) = P_{x(0)}+ P_{x(3)}= \frac{1}{8}$
 De er ufhængige.








