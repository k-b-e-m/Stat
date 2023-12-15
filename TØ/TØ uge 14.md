![[TØ uge 14 Øvelse A.png]]
a) 
![[TØ uge 14 Øvelse A opgave a.png]]

b)  T= 1,3,5, R=2,4
![[Definition of transient and recurrent.png]]
c) 
Billede i a
___
![[TØ uge 14 Øvelse B.png]]


```R
A = matrix(c(0.5-1, 0.2,0.1,0.4,0.5-1,0.3,1,1,1),3,3,TRUE)  
b = matrix(c(0,0,1),3,1,TRUE)  
print(A)  
print(b)  
solve(A,b)
```

$$[0,234043 0,404255 0,361702]$$

___
![[Sommer 2019 opgave 8.png]]
Her skulle der kun laves delspørgsmål 2

![[Attachments/Diagram 3.svg]]


![[definition of irreducible.png]]
Den er desuden aperiodisk.
![[Theorem about Finite Markov Chains.png]]
Derved er løsningen unique.
Løsningen findes via script:
$$
[\frac{3}{8} \frac{19}{56} \frac{2}{7}]
$$

___
![[TØ uge 14 Øvelse C.png]]
a) 
![[TØ uge 14 øvelse C a.png]]
b)
$$
\begin{align*}
	a_{1}&= P(\text{absorb 1} | X_{0}=1) =1\\
a_{2}&= P(\text{absorb 1} | X_{0}=2) &= 0.6a_{1} + 0.4a_{3}\\
a_{3}&= P(\text{absorb 1} | X_{0}=3) &= 0.6a_{2} + 0.4a_{4}\\
a_{4}&= P(\text{absorb 1} | X_{0}=4) =0
\end{align*}
$$

Derved skal vi nu løse de to ligninger. Ved dette får vi:


$$
 \left\{  \left\{ a_{1} = \frac{15}{19}, a_{2} = \frac{9}{19} \right\}  \right\} 
$$
![[Absorption Probabilities.png]]

___
![[TØ uge 14 Øvelse D.png]]
a)
![[Attachments/Diagram 2.svg]]
b)
$$
P=
\begin{bmatrix}
0.8 && 0.2\\
0.3 && 0.7
\end{bmatrix}
$$

$$
P^{1000000} =
\begin{bmatrix} 
0.6&&0.4 \\ 
0.6&&0.4
\end{bmatrix}
$$
$$
\frac{3}{5}
$$

___
![[TØ uge 14 Øvelse E.png]]

![[Attachments/Diagram 4.svg]]
a)
$$
P=
\begin{bmatrix}
1 - p & p & 0 \\ 
1 - p & 0 & p \\ 
1 - p & 0 & p
\end{bmatrix}
$$

Den stationære fordeling for denne giver:
$\begin{bmatrix}1 - p&& - p^{2} + p&&p^{2}\end{bmatrix}$


b)
EnergiForbrug
1 har 1
2 har 2
3 har 3
EnergiIndtag
1 har 0 
2 har 2
3 har 4

For energiforbruget:
$$
1\cdot3 (1 - p)  +  2\cdot p  +  3\cdot 2p = energiforbrug
$$
For energiIndtag:
$$
0\cdot3(1 - p) +  2\cdot p  +  4\cdot 2p = energiIndtag 
$$
energiforbrug = enrgiIndtag $\Leftrightarrow p \approx 0.6$

Stationær med denne:
$[0.400000, 0.240000, 0.360000]$
Check for svar:
$0.4\cdot 1 + 2\cdot 0.24 + 3\cdot 0.36 = 1.96$ 
$0.4\cdot 0 + 2\cdot 0.24 + 4\cdot 0.36 = 1.92$
Dette vurdere jeg er tæt nok på. Desuden er det meget tæt på den rigtige løsning. Afrundingingen skyldes muligvis at jeg bruger geogebra:
![[TØ uge 14 - Geogebra insekt.png]]
___
![[Vinter 20182019 opgave.png]]
![[Definition of transient and recurrent.png]]
a)  ![[TØ uge 14 vinter 20182019 opgave 5 a.png]]
b)
Alle er recurrent

![[definition of irreducible.png]]
Markovkæden er aperiodic og irreducible.
Den stationære fordeling kan regnes til:
Dette giver os søjlevektoren:
$[0.296296, 0.333333, 0.370370]$
![[Theorem about Finite Markov Chains.png]]
Udfra dette ved vi at den stationære er unik. Derved er det også grænsefordelingen.
![[Limiting Distributions.png]]
Ved brug af dette ved vi altså at det $\pi_{3}= lim_{n\rightarrow\infty} P(X_{n}=3|X_{0}=i)= 0.3703704$


![[MSE = VAR + B.png]]