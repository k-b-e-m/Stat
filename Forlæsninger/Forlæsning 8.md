#lecture 
![[Definition 3.10 CDF.png]]
CDF kan bruges til alle former for stokastiske variabler, det vil sige også stokastiske variabler der ikke er discrete. i [[Forlæsning 5]] kan man se de andre former for stokastiske variabler.

PMF: $P_{X}(x)$
CDF = $F_X(x)$ 
givet en $F_{X}$ Kan man få en $P_X$ tilbage:
$x \in R_X$ = $x\in \mathbb{R}$ hvor $F_{X}$ springer.
$P_{X} =$ springhøjden af $F_{X}$ .

antag a < b 
$P(a<X\leq b) = F_{x}(b)-F_{x}(a)$

[[3.2 Cummulative Distribution Function CDF]]
#Example 
Vi har et spil hvor X=gevinst. $R_{X} = {7,-1}$
$P_{X}(7)=0.1 , P_{X}(-1) = 0.9$

intuition:
10p = 1 ,vinder  7 1 gang
10(1-p) = 9, taber -1
Forventet gevinst:
``` math-tex
((10 * 0.1) * 7 + (10 * (1-0.1)*-1))/(10) =>
```
Dette er det vægtet gennemsnit. Vi taber altså i gennemsnit 0.2 per spil.

![[Definition 3.11 Expected value (= mean = average).png]]
Store tals lov (LLN)
$X_{1} , \cdots ,X_n$ er ufafhængige diskrete spil med samme fordeling
Gevinsten vil være:
$\frac{X_{1} + \cdots + X_{n}}{n} \longrightarrow ^{n\rightarrow \infty} E_{X}$ 

___
Menti spørgsmål 1:
#mentiSpørgsmål 
 Hvad er den forventede tab i roulette hvis jeg sætter 1000 Kr. på 13? ( ss at kuglen falder på 13 er 1/37 og i så fald vinder jeg 35 gange indsatsen) [[Definition 3.11 Expected value (= mean = average).png]]
```math-tex
(1/37)*35000 + (1-(1/37))*-1000 =>
```
(. i den over svare til ,)

Menti spørgsmål 2:

