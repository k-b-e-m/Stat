![[Aflevering 12 - beskrivelse.png]]

a)
Dette vi får oplyst svare til en model med ukendt varians og middelværdi eftersom vi hverken får oplyst dette eller har nok information til at finde frem til den. Dette skyldes at en bernoulli fordelings Middelværdi og varians er afhængig af p, hvilket i dette tilfælde er vore ukendte $\theta$, derved kender vi altså hverken varians eller middelværdi.
$H_{0}$ svarer desuden til 10% eller mere af de studerende lider af allergi, eftersom $\theta$ i dette tilfælde er den ukendte sandsynlighed for "succes", hvor succes i dette tilfælde er at en studerende har allergi. Desuden ved simpel matematik vides det at 0.1 kan omskrives til 10%.
b)
![[table 8.4 - one sided.png]]
I Vores tilfælde har vi altså en non - normal distribution og et stort N og skal derfor bruge den anden række af table 8.4. Derved er vores Test Statistic:
$$
W=\frac{\bar X  - \mu_{0}}{\frac{S}{\sqrt{n}}}
$$
Vores $\bar X$ kan udregnes som:
$$
\bar X = \frac{1}{225}(21\cdot 1  +  204\cdot 0) \approx 0.09333 
$$
Vores S kan udregnes som:
![[Sample Variance and Sample Standard deviation.png]]
$$
\begin{align*}
S^{2}&= \frac{1}{255 - 1} \sum_{k=1}^{255}(X_{k}  - \bar X)^{2} &= 0.085
\end{align*}
$$
Derved har vi S:
$$
S = \sqrt{0.085} = 0.2915
$$
Vi antager desuden at $H_{0}$ er sand, så vores $\mu_{0}$  er derved 0.1 eftersom EX for en Binomial er p, hvilket i vores tilfælde er $\theta$ .
Til sidst har vi vores n som er 225. Derved kan vi udregne W som:
$$
W= \frac{0.09333 - 0.1}{\frac{0.2915}{\sqrt{225}}} \approx  - 0.3432
$$
For at vi acceptere $H_{0}$ med signifikantniveau på 0.05 skal det så gælde at:
$$
\begin{align*}
 - 0.3432 \geq  - z_{0.05}\\\\
 - 0.3432 \geq  - 1.64
\end{align*}
$$
Eftersom dette er sandt godkender vi altså $H_{0}$ ved et signifikantsniveau  på 0.05.

c)
Vi skal nu udregne en P - værdi.
![[Computation of P-Values.png]]
Vi antager her at $H_{0}$ er sand. 
I vores tilfælde er $w_{1} =  - 0.3432$
Derved har vi altså at det er vores værdi for C.
For at regne $P(\text{type I error})$ har vi udfra [[8.4 Hypothesis Testing]], under kapitel 4:
$$
1 - \Phi( - 0.3432) =   0.6342
$$

Derved har vi en P - værdi på 0.6342