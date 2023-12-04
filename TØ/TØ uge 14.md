![[TØ uge 14 Øvelse A.png]]
a) 
![[TØ uge 14 Øvelse A opgave a.png]]

b) R = 4,2 T= 1,3,5
![[Definition of transient and recurrent.png]]
c) 
Billede i a
___
![[TØ uge 14 Øvelse B.png]]
3

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
[0,234043 0,404255 0,361702]
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
0.7 && 0.3
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

___
![[Vinter 20182019 opgave.png]]
![[Definition of transient and recurrent.png]]
a)  ![[TØ uge 14 vinter 20182019 opgave 5 a.png]]
b)
![[Limiting Distributions.png]]
$0.3703704$


