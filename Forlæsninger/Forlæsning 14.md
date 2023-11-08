[[5.1 Two Discrete Random Variables]]
![[Conditional expectation of X.png]]
Dette vil sige at hvis man har givet en værdi for y, kan man finde den forventede middelværdi. når y har den specifikke værdi.
___
![[Law of total probability for two random variables.png]]
Law of total probability kan også skrives som:
$$
B_{j}=\{Y=y_{j}\}
$$
$$
P(A)=\sum_{j=1}^{\infty} P(A|B_{j})P(B_{j})
$$
law of total expectation
Law of total expectation med en en funktion g(x):
$$
E[g(X)] = \sum_{j=1}^{\infty}E[g(x)|Y=y_{j}]P(Y=y_{j})
$$

___
#Example 
eksempel 5.7
Lad N være antal personer der besøger en restaurant på en given dag.
Her er en god model N~Poisson($\lambda$) Eftersom det er et antal hændelser og en tidsperiode.
Hver kunde bestiller en drink med ss $p\in (0,1)$ ufhængig af N og de andre kunder.
X:= antal kunder der køber en drink.
Hvad er EX?
Det vil sige vi her kan bruge loven om total middelværdi 
[[Law of total probability for two random variables.png]]
[[definition 3.9 Poisson distribution.png]]
[[Def 3.6 Binomial distrubution.png]]
$$
E[X]=\sum_{j=1}^{\infty}=E[X|N=n]P(N=n)
$$
Fordeling af X givet ved N=n.
Dette kan ses som en bernoulli, eftersom en kunde enten køber eller ej.
Eftersom vi har n personer der køber ufhængigt af hinanden er det en binomial fordeling:
Binomial(n,p)
X|N=n ~Binomial(n,p)
Vi ved hvad middelværdien er for en binomial: $np$
Nu kan vi bruge loven om den totale middelværdi:
$$
E[X]=\sum_{j=1}^{\infty}=npP(N=n) \Leftrightarrow p\sum_{j=1}^{\infty}=nP(N=n) \Leftrightarrow pE[N]
$$
Eftersom vi ved at middelværdi for en poissonfordeling er $\lambda$ :
$$
E[X]=p\lambda
$$

___
[[5.1 Two Discrete Random Variables]]
![[LOTUS for Two Discrete Random Variables.png]]
Kan også skrives som:
$$
E[g(X,Y)]=\sum_{j=1}^{\infty}g(x_{j},y_{j})P_{X,Y}(x_{j},y_{j})
$$
Hvis to stokastiske varianter er ufhængige gælder det at:
$$
E[X,Y]=E[X]\cdot E[Y]
$$
Ligeledes:
$$
E[g(X),f(Y)]=E[g(X)]\cdot E[f(Y)]
$$
___
#mentiSpørgsmål 
X,Y er ufhængige og X~Poisson(1), Y~Poisson(1).
hvad er $E[X(X+Y)]$
Svar 3.
Fordi at de to X er afhængige af hindanden kan vi derfor ikke bruge det som er vist for oven.
$$
E[X(X+Y)]$ = E[X^{2}+X\cdot Y] 
$$
Ved at gange ud
$$
E[X(X+Y)]$ = E[X^{2}+X\cdot Y] \Leftrightarrow E[X^{2}]+E[X\cdot Y]
$$
Vi ved at X og Y er ufhængige derfor:
$$
E[X\cdot Y]=E[X]\cdot E[Y] = 1\cdot 1 = 1
$$
Den anden:
$$
E[X^{2}]=2
$$
Derved for man 2+1 = 3
___
[[5.2 Two Continuous Random Variables]]
Dobbelt integral:
$$
V = \int_{b}^{a}(\int_{c}^{d}f(x,y)dy)dx
$$
hvor V er volumen under grafen.
___
#Example 
$V=\int_{0}^{1}(\int_{0}^{3}xy^{2}dy)dx \Rightarrow x[\frac{1}{3}y^{3}]_{0}^{3} \Rightarrow x\left[\frac{1}{3}\cdot 3^{3}-\frac{1}{3}\cdot 0\right]=g(x)$
$$
\int_{0}^{1}g(x)dx=\frac{9}{2}
$$
___
Fubinis sætning:
$$
V=\int_{b}^{a}\int_{d}^{c}f(x,y)dydx = \int_{d}^{c}\int_{b}^{a}f(x,y)dxdy
$$
___
Hvis man vil beregne arealet for et iregulært område D kan man definere en ny funktion:
$$
f^{\sim}(x,y)\begin{equation}
\begin{cases}
f(x,y) & (x,y)\in D \\
0 & otherwise
\end{cases}
\end{equation}
$$
Vi kan derved så integrere over $f^\sim$ .
___
