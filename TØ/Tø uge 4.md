![[Tø uge 4 - problem 1.png]]
a) $R_{x}= [0,2]$ Dette da det mindste x kan være er 0 og det største er 2.
b)  $\frac{1}{6}$ Eftersom x=2 er denne sandsynlighed.
c)  $\frac{1}{3}$ Eftersom x=1 har denne sandsynlighed
d) Vi skal finde $P(X=0|X<2))$
						$P(X<2) = \frac{1}{2} + \frac{1}{3} = \frac{4}{6}$
						$P(X=0)=\frac{1}{2}$
						$P(X=0 \cap X<2) = \frac{P(X=0\cap X<2)}{P(X<2)} =\frac{\frac{1}{2}}{\frac{4}{6}} = \frac{3}{5}$ [[Definition 1.2 Conditionally independent.png]]
___

![[Tø uge 4 - problem 2.png]]
$P(X=1)=P(X=2)$ , $P(X=0) = P(X=3)$, $P(X=0) = 2\cdot P(X=1)$ 
$P(X=1) + P(X=2) + P(X=0) + P(X=3) = 1$
$P(X=1) + P(X=1) + 2P(X=1) + 2P(X=1) = 1$
$P(X=1)=P(X=2) = \frac{1}{6}$ , $P(X=0) = P(X=3) = \frac{2}{6}$

PMF:

$$
\begin{equation}
P_{x}(X) = 
\begin{cases}
 \frac{2}{6} & \text{X=0} \\
 \frac{1}{6} & \text{X=1} \\
 \frac{1}{6} & \text{X=2} \\
 \frac{2}{6} & \text{X=3} \\
 0 &  \text{otherwise} \\
 \end{cases}
\end{equation} 
$$

---

![[Tø uge 4 - problem 3.png]]
$R_{x} = \{-5\cdots 5\}$

$$ \begin{equation} P_x(dices) = \begin{cases} \frac{1}{36} & x=-5 \\ \frac{2}{36} & x=-4 \\ \frac{3}{36} & x=-3 \\ \frac{4}{36} & x=-2 \\ \frac{5}{36} & x=-1 \\ \frac{6}{36} & x= 0 \\ \frac{5}{36} & x= 1 \\ \frac{4}{36} & x= 2 \\ \frac{3}{36} & x= 3 \\ \frac{2}{36} & x= 4 \\ \frac{1}{36} & x= 5 \\ 0 & otherwise \end{cases} \end{equation} $$
___

![[Tø uge 4 - problem 4.png]]

a)
$$ (\frac{1}{4}+\frac{1}{8})\cdot (\frac{1}{6}+\frac{1}{6})= \frac{1}{8} $$

and er det samme som intersection og de er independent - derfor kan vi gange.
b)
$$
1-(1-\frac{5}{8})\cdot \left(1-\frac{2}{3}\right)= \frac{7}{8}
$$
side 49
c)
$$(\frac{1}{8}+\frac{1}{2})\cdot\left(\frac{1}{3} + \frac{1}{3}\right)= \frac{5}{12}$$
De er independent

d) 
 ![[Tø uge 4 - problem 4 løsning d.png]]
 ``` math-tex
 1/4 * (1/6 + 1/3 + 1/3)+(1/8) *(2/3) + (1/2) *(1/3) 
```
Ovenover er værdierne blot sat ind.
 ___
 ![[Tø uge 4 - problem 5.png]]
 Vi kan her benytte os af [[Bernoulli distribution.png]] og [[def 3.6 Binomial distribution.png]].
 For det første kan vi her definere vores range som $R_x=\{0,1,\cdots, 50\}$
Hvis vi definere det at have en bil som "succes" kan vi udføre hver elev som et bernoulli experiment. Det vil sige at vi perfomer 50 $Bernoulli(\frac{1}{2})$. Udfra [[Lemma 3.1 - bernoulli random variables to binomial distribution.png]] Vil det svare til S ~$Binomial(50,\frac{1}{2})$ :
$$
\begin{equation}
P_{S}(s) = 
\begin{cases}
  \begin{pmatrix}
50 \\
s 
\end{pmatrix} (\frac{1}{2})^s(\frac{1}{2})^{50-s}\ & \text{for s= 1,2 ..., 50} \\
 0 & \text{otherwise} \\

 \end{cases}
\end{equation} 
$$

Eftersom 
$$
\begin{pmatrix}
50 \\
31 
\end{pmatrix} = \frac{50!}{31!(50-31)!}
$$

udfra definationen om [[Unordered without replacement.png]] , kan vi nu indsætte dette i formlen for neden.
$$
P_{s}(S)=
\frac{50!}{S!(50-S)!} \cdot (\frac{1}{2})^{S}(\frac{1}{2})^{50-S}$$
fordi der er 30 parkeringspladser, skal vi finde:
$$
\Sigma_{S=31}^{50}
\frac{50!}{S!(50-S)!} \cdot (\frac{1}{2})^{S}(\frac{1}{2})^{50-S} = \frac{8368282903647}{140737488355328} \approx 0.05946022627971814245029236190021038055419921875
$$

Derved er dette sandsynligheden for at der ikke er plads på parkeringspladsen.

---
![[Tø uge 4 - problem 7 a og b.png]]

a) Vi skal her bruge formlen for [[def 3.5 Geometric distribution.png]]:
$$
P_{X(k)}= \frac{1}{5} (1-\frac{1}{5})^{k-1}
$$


Vi udnytter os derved af komplimentet og tager sandsynligheden for at vi slå 5 eller under:
$$
P(X>5) =	1-\Sigma_{k=1}^{5}\frac{1}{5}(1-\frac{1}{5})^{k-1}= \frac{1024}{3125} \approx 0.32768
$$
$$
P(X<2\leq 6) = (\Sigma_{k=1}^{6}\frac{1}{5}(1-\frac{1}{5})^{k-1})-\left(\Sigma_{k=1}^{2}\frac{1}{5}(1-\frac{1}{5})^{k-1}\right)= 
$$
																	$0.737856 - 0.36 = 0.377856$
$$
P(x>5|x<8) = \frac{P(X>5 \cap X<8)}{X<8} =\frac{P(8>X>5}{X<8}
$$
^^Udfra defination om [[Conditional probability of P(A B).png]]
Dette kan nu omskrives til:
$$
P(x>5|x<8) = \frac{(\Sigma_{k=1}^{7}\frac{1}{5}(1-\frac{1}{5})^{k-1})- (\Sigma_{k=1}^{5}\frac{1}{5}(1-\frac{1}{5})^{k-1})}{(\Sigma_{k=1}^{7}\frac{1}{5}(1-\frac{1}{5})^{k-1})} = \frac{0.7902848-0.67232}{0.7902848} \approx 0.1492687193275133217796925867737807939618729855363534766200741808
$$

b)
Vi har i denne opgave den binomial fordeling: $X~Binomial(10,\frac{1}{3})$ dermed har vi (benytter [[def 3.6 Binomial distribution.png]], [[Unordered without replacement.png]] og komplimentet):
$$
P_{X}(x) = \frac{10!}{x!(10-x)!}\frac{1}{3}^x(1-\frac{1}{3})^{10-x}
$$
$$
P(x>5) = 1- \Sigma _{x=1}^{5} \frac{10!}{x!(10-x)!}\frac{1}{3}^{x}(1-\frac{1}{3})^{10-x}= 1-0.909 = 0.093
$$
$$P(2<X \leq 6)  = \Sigma _{x=3}^{6} \frac{10!}{x!(10-x)!}\frac{1}{3}^{x}(1-\frac{1}{3})^{10-x} = 0.6811969720062998526647360666565056139816084946400447086318142559$$
$$
P(x>5|x<8) = \frac{\Sigma _{x=5}^{7} \frac{10!}{x!(10-x)!}\frac{1}{3}^{x}(1-\frac{1}{3})^{10-x}}{\Sigma _{x=1}^{7} \frac{10!}{x!(10-x)!}\frac{1}{3}^{x}(1-\frac{1}{3})^{10-x}} = \frac{0.2097241274196006706294772138393537570492303002591068434689833866}{0.9792545174346728987789801690121763281342613761452353130450981388} \approx 0.2141671278361925843940232429441062534587714443829551743220807968
$$
 - Har ikke regnet den numeriske værdi ud ved brug af R
 _____
 ![[Tø uge 4 - problem 8.png]]
 a)
 Dette svare til:
  $$
  P(X=1)=P(S_{1})= \frac{1}{2}
$$
$P(X=2)=\frac{1}{2}  \cdot [1-\frac{1}{2}^2] = \frac{3}{8}$
$P(X=3) = \frac{1}{2}\cdot \frac{1}{2}^{2}\cdot [1- \frac{1}{2}^3]=\frac{7}{64}$

b)
$$
(\prod_{k=1}^{n} \frac{1}{2}^{k-1})\cdot (1-\frac{1}{2}^k)
$$
c)
Her kan vi bruge komplimentet:
$$
1-(P(X=1) + P(X=2)) = 1-(\frac{1}{2}+\frac{3}{8})=\frac{1}{8}
$$
Derved er der $\frac{1}{8}$ chance for at man tager testen mere end en gang.
Vi skal her finde:
$$
P(X=2|X>1)
$$
Vi skal her bruge [[Conditional probability of P(A B).png]]:
$$
P(X=2|X>1) = \frac{P(X=2 \cap X>1)}{P(X>1)}
$$
$$P(X>1) = 1- P(X=1) = 1-\frac{1}{2}$$
Derved får vi ved også at vide at når de er [[Definition for independence between 3 events.png]]
$$
P(X=2|X>1) = \frac{P(X=2 \cap X>1)}{P(X>1)} = \frac{\frac{3}{8} }{\frac{1}{2}}= \frac{3}{4}
$$
$\frac{3}{8}$ dele i toppen eftersom $P(X=2 \cap X>1)$ kun deler $X=2$ alligevel.
___
![[Tø uge 4 - problem 11.png]]
? Følg med til tø

___

![[Tø uge 4 - øvelse A-1.png]]
Følg med til Tø eller spørg