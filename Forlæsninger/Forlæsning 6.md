#lecture 

[[3.1 Basic Concepts]]
##### Diskrete fordelinger
Bernoulli fordeling:

![[Bernoulli distribution.png]]

Eksempel. Vi tager en beronoulli fordeling hvor $R_{x}\{0,1\}$ Det vil sige at vores PMF $P_{x}(1)=p$ og $P_{x}(0) = 1-p$  Vi betragter her 1 som succes og 0 som fiasko.
![[Bernoulli distribution graph.png]]

___

Geometric distribution:
![[def 3.5 Geometric distribution.png]]
![[Geometric distribution graoh.png]]
_____
#Example 
Random variable experiment:
Kast en møndt med P(k)=p gentagende gange(uafhængige) og las X = antal af kast til første K(krone).
$P_{x}(1)=1 = P(X=1)=P(K)=p$
$P_{x}(2)=1 = P(X=2)=P(PK) = P(P)\cdot P(K) = (1-p)p$
$P_x(k)=P(X=k)=P(PP...PK) = P(P)\cdot P(P)\cdot P(K) = (1-p)^{k}P$
Kort sagt:
Germetric p er antal af ufhængige bernoulliforsøg intil den første succes.
___

Binomial Distribution
![[def 3.6 Binomial distribution.png]]

____
#Example 
n=3 k=2 $\{1,2,3\}$ Ordered with no replacement 
(1,2)(1,3)
(2,1)(2,3)
(3,1)(3,2)
$P_{2}^{3}=6$
Kan beregnes ved:
1 position har n muligheder
2 position har n-1 problemer
k position har n-k+1
Derved får vi formlen for [[Permutation in ordered and no repetition.png]]![[Permutation in ordered and no repetition.png]]
Denne formel kan også skrives som $P^{n}_{k=}\frac{n!}{(n-k)!}$ [[Number og k-permutations for n distinguishable objects.png]] Hvis vi har at k=n får vi $P_{n}^{k}=n!$ .
____

Unordered without replacement:
![[Unordered without replacement.png]]
___

Binomial distribution:
![[Def 3.6 Binomial distrubution.png]]

![[Lemma 3.1 - bernoulli random variables to binomial distribution.png]]

---

#Example 
![[example 3.7.png]]
X = Binomial (n,p)
Y = Binomial(m,p)
X+Y - Binomial (n+m,p) - lemma 3.1
Bevis:
$X = X_{1}+ X_{2}... + X_{n}$ X: Bernoulli(p)
$Y = Y_{1}+ Y_{2}....+Y_{m}$ Y: Bernoulli(p)
$X+Y = X_{1}+X_{2}..+X_{n}+ Y_{1}+ Y_{2}...+ Y_m$ udfra lemma 3.1 er dette en binomial fordeling som vist for oven.
___
#Example 
Shopping returns AMAZON
n = 4000 pakker sælges pr minut
p= $\frac{1}{6}$ = ss for pakken bliver sat tilbage
X = antal af pakker sendt per minut som returneres.
En pakke vil her være et bernoulli experiment.
P(X>700) pakker bliver sendt tilbage.
Dette kan regnes ved hjælp af R:
```R
dbinom(700,4000,0.166) #"d = distribution"
pbinom(k,n,p)          # "P= probabolity"
rbonom(1,n,p)          # "r= random" 1, står for antal af udfald
```


