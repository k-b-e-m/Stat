![[Aflevering 11.png]]

a)
For at opsummere matematisk har vi altså følgende udsagn.
$X_{i} \sim Exponential(\lambda)$ 
Vi har at n = 10.
Vi får desuden de to hypoteser:
$H_{0}: \mu = 2$
$H_{1}: \mu <2$
Vi ved at eftersom $X_{i}$ alle er exponential fordelte at EX af exponential er $\frac{1}{\lambda}$ . Desuden ved vi at grundet law of large numbers at vores estimator af $\mu$ vil gå mod den "sande" expected value. Derved vil $\mu$ konvergere mod $\frac{1}{\lambda}$ . Dette er sammenhængen mellem $\mu$ og $\lambda$ .

b)
Vi ved ved denne opgave at:
$$
W=\bar X = \frac{X_{1} + X_{2}  +  \cdots  + X_{10}}{10}
$$
Vi ved desuden at $X_{i} \sim Exponential(\lambda)$
Under $H_{0}$ hypotesen vil det sige at $EX_{i} = 2$
For en Exponential ved vi at $EX = \frac{1}{\lambda}$ 
Derved har vi altså under $H_{0}$:
$$
\begin{align}
\frac{1}{\lambda} = 2 \Leftrightarrow\\
\lambda = \frac{1}{2}
\end{align}
$$
Derved har vi under $H_{0}: X_{i} \sim Exponential(\frac{1}{2})$

Fra side 192 i bogen ved vi at en Exponential kan skrives som $Gamma(1,\lambda)$. Derved har vi altså $X_{i} \sim Gamma(1,\frac{1}{2})$.
![[Aflevering 11 - hint.png]]
Ud fra sætning B 1 af kan vi nu omskrive W til:
$$
W=\frac{Gamma(10,\frac{1}{2})}{10}
$$
Eftersom tælleren nu blot var en sum af Gamma fordelinger.
Ligeledes kan vi nu bruge sætning B igen her benytter vi dog 2. Derved får vi:
$$
\begin{align}
W=\frac{1}{10}Gamma(10,\frac{1}{2})=\\
Gamma(10,\frac{\frac{1}{2}}{\frac{1}{10}})=\\
Gamma(10,5)
\end{align}
$$
Derved har vi nu:
$W = Gamma(10,5)$
Vi har et signifikant niveau på $\alpha = 0.05$
Vi acceptere altså $H_{0}$ hvis:
$$
\begin{align}
P(W < c)\leq \alpha \Rightarrow\\
P(W<c)\leq 0.05
\end{align}
$$
Til dette kan vi benytte R til nu at regne 0.05 kvartilen for vores W:

```R
qgamma(0.05,10,5)
```
Ved dette får vi 1.085081. Dette vil være værdien for c.

c)
I denne opgave har vi i stedet for 10 observationer 1000.
Til dette kan vi gøre det samme som den anden og ender til sidst ud i:
$$
\begin{align}
W=\frac{Gamma(1000,\frac{1}{2})}{1000} \Leftrightarrow\\
\frac{1}{1000}Gamma\left(1000,\frac{1}{2}\right)  
\Leftrightarrow\\
Gamma\left(1000,\frac{\frac{1}{2}}{\frac{1}{1000}}\right)\Leftrightarrow \text{Regel 2 fra sætning B}\\
Gamma(1000,500)
\end{align}
$$
Derved kan vi nu ved R regne ud får signifikant niveau 0.05:
```R
qgamma(0.05,1000,500)
```
Ved dette får vi 1.89712.

Ved sammenligning af de to resultater kan vi se at jo flere observationer vi får, desto tættere kommer vi på 2. Altså jo flere observationer, jo mere sikre er vi på at vi  kan afvise $H_{0}$