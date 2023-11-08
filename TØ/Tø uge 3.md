![[Tø uge 3 - opgave 1.png]]
Vi antager at de er uafhængige. Vi ved at chancen af en fejler er $\frac{1}{100}$ . Derved kan vi regne chancen for det ikke fejler ud til at være $P(virker) = 1- \frac{1}{100}$ Det vil sige at chancen for at begge to virker kan udregnes ved $P(begge Dør) = \frac{1}{100} \cdot \frac{1}{100}$.  Vi kan så tage komplementet til dette for at få at mindst en virker: $P(beggeVirker)^{c}= 1-(\frac{1}{100} \cdot \frac{1}{100})= 0.9999$.

![[Tø uge 3 - opgave 3.png]]
Vi ved at vi har $\frac{1}{2}$ for at få både en krone og plat. Det vil sige at sandsynligheden for at slå 2 ens er $\frac{1}{2}\cdot \frac{1}{2}$, udfra [[Chain rule for conditional probability.png]]. Derved kan vi regne frem til en formel som lyder på følgende:
$\Sigma_{i=2}^{k} 2\cdot \frac{1}{2}$ Dette eftersom vi ved hvert ekstra kast har 2 muligheder for vi har slået 2 ens og der er 50% chance for at slå den ene eller den anden.
![[Tø uge 3 - opgave 3-1.png]]
![[Tø uge 3 - sætning a.png]]

det er mærkligt
![[Tø uge 3 - problem 31.png]]
$$ \begin{align*} P(T) =& P(T\cap D)+P(T\cap D^c) &&(\text{Law of Total probability}) \\ P(R) =& \frac{1}{200} + \frac{1}{2000} = \frac{11}{2000} \end{align*} $$ $$ \begin{align*} P(D|T) =& \frac{P(T|D)P(D)}{P(T)} <=> &&(\text{Bayes rule}) \\ P(S|R) =& \frac{\frac{1}{100} \cdot \frac{1}{2}}{\frac{11}{2000}} = \frac{10}{11} \end{align*} $$
[[Bayes rule.png]] [[Law Of Total Probability.png]]
![[Tø uge 3 - billede problem 31.png]]
Ovenstående billede viser tegnet der er tegnet. Benytter sig af [[Chain rule for conditional probability.png]] 

![[Tø uge 3 - problem 34.png]]
a)
$P(A)=\frac{6}{36}$
P(B) = $\frac{6}{36}$
$P(A\cap B)=P(A)\cdot P(B) \Leftrightarrow \frac{6}{36} \cdot \frac{6}{36} = \frac{1}{36}$ , $P(A \cap B) = \frac{1}{36}$ (Fundet ved at sammenligne). Eneste mulighed er (2 og 5) Derved er de independent.
b)
$P(C) = \frac{6}{36}$
$P(A\cap B)=P(A)\cdot P(B) \Leftrightarrow \frac{6}{36}^{2}= \frac{1}{36}$ De deler begge sættet 2,3 ,  derved er der også kun 1 mulighed og de er derved independent.
c)
Her har vi : $P(B)\cdot P(C) = \frac{6}{36}^{2}= \frac{1}{6}$ De deler kune sættet (4,3)
d)
$0 \neq \frac{1}{216}$ Derved er de ikke ens
![[Tø uge 3 - øvelse 4.png]]


Vi har her de forskellige sandsynligheder:
$P(G|K_{1)}= 1$
$P(G|K_{2})=\frac{1}{2}$
$P(G|K_{3)}= 0$
At spørge hvad sandsynligheden for at der er en guldmønt i den anden skuffe er det samme som at spørge om man er i $K_1$ Det vil sige at vi skal finde: $P(K_1|G)$ Her kan vi bruge [[Bayes rule.png]]:
$$P(K_{1}| G) = \frac{P(G|K_{1})P(K_{1})}{P(G|K_{1})P(K_{1)}+ P(G|K_{2})P(K_{2}) + P(G|K_{3)}P(K_{3)}}$$

$$P(K_{1}| G) = \frac{1 \cdot \frac{1}{3}}{1\cdot \frac{1}{3}+ \frac{1}{2}\cdot \frac{1}{3} + 0 \cdot \frac{1}{3}} = \frac{\frac{1}{3}}{\frac{3}{6}} = \frac{2}{3}$$
![[Tø uge 3 - opgave 1 fra reeksamen 2019.png]]
$P(B) = 2P(A)$
$P(C) = 2P(A)$
$P(A)+P(B)+P(C)=1$ Antager at det ikke kan stå alene. Indsætter kun P(A):
$2(2P(A))+2P(A)+P(A) = 1 \Leftrightarrow 4P(A) + 2P(A)+P(A)= 7P(A) =1$
Derved kan vi nu at regne ud:
$P(A) =\frac{1}{7}$
$P(B) = \frac{2}{7}$
$P(C) = \frac{4}{7}$
![[Tø uge 3 - opgave 3 reeksamen 2019.png]]
Her tager vi komplementet. Det vil sige vi regner ud hvad chancen er for han taber alle.
$$\frac{95}{100}^{10} = \frac {6131066257801}{10240000000000} \approx 0.59873693923837890625 $$
Derved kan vi tage det komplimentet til dette:
$$P(PeterVinderPaaEtTidspunkt) = 1- \frac{6131066257801}{10240000000000} \approx 0.40126306076162109375 $$
