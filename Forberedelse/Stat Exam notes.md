
# Discrete Random Variables

# Continuous Random Variables

# Joint Distribution

# Statistical Inference
## Point estimation

### Evaluering af estimators

for at bestemme om en estimator er bias, vil man benytte neden forstående definition. Hvis at det er lig med 0, så er estimator ikke biast. 

![[(Send) Bias.png]]

side 429

Yderligere kan Mean squared error (MSE) også udregnes. det er en måde at estimere hvad som er den bedste estimator. En lavere værdi af MSE, vil definere den bedste estimator. Der er 2 definationer for MSE, benyt den som er lettest for problemet. 

![[(send) MSE.png]]

side 430

![[(send) MSE med bias.png]]

side 431

### Estimator for variance

To be able to do some of the further analysis, we might not always know the variance, therefor $S^2$ is an estimator for variance. It is defined as below. 

![[(send) Estimator for variance.png]]

side 433

### Maximum likelihood estimation (MLE)

For at kunne foretage en MLE analyse af en estimatior, skal en likelihood function først defineres det gøres som nedenfor. 

![[(send) likelihood Function.png]]

side 437

Her vil man få en træls funktion, som man derefter typisk vil bruge regneregler til at reducere. 

Derefter vil man benytte MLE hvor det går ud på at maksimere værdien af estimatioren. 
![[(send) Maximum likelihood estimator (MLE).png]]

side 440


Dette vil man gøre ved at differentiere likelihood funktionen og sætte den lig med 0. (Der er en matlab skabelon til det).
## Interval estimation (Confidence intervals)

Interval estimation is like the point estimation, with the exception that we are trying to estimate an interval insted of a point. It would look like below.

![[(send) Interval Estimation.png]]

Side 449

Det første step ville være at finde en værdi som skal være pivotal quantity, Dette vil han ikke be os om. men højest at skulle udlede den ud fra en ligning, hvor vi får en funktion for Q. og så skal finde us af hvordan at Q er fordelt. 

![[(send) Pivotal quantity.png]]

Side 453

Der er de 2 ovenstående krav for en pivotal quantity er gyldig.

### Forudbestemte intervaller

![[(send) Interval1.png]]
Side 455

![[(send) Interval 2.png]]
Side 458

![[(send) Interval 3.png]]
Side 459

![[(send) Interval 4.png]]
Side 460

### Confidence intervaller for normale samples. 

Lav imorgen







## Hypothesis Testing

### Test Statistik 

Når man vil lave en hypothesis test, så vil man started med at definere en test static. Det er defineret som nedenfor. 

![[(send) Def 8.3.png]]
Side 477

Derefter vil man opstille to hypothesis, $H_0$ og $H_{1}$ De vil typisk være givet. 
### type 1 error

Vil man finde sandsynligheden for en type 1 fejl, som ser ud som nedenfor. Her skal det siges at man kan bruge det at $H_{0}$ er givet, så det er muligt at bruge den i udledningen som kommer efter dette skridt. 

$$
\begin{align*}
P(type\;1\;error) &= P(Reject\; H_{0} | H_{0})\\
&= P(W > c |H_{0}) \leq \alpha\\
&= P(W > c) \leq \alpha
\end{align*}
$$



Hvis at $X_{i}$ er normal fordelt eller at n er stor (ca. +25) så kan de nedenfor stående tabeller benyttes til at finde test static og acceptance region. 

Derefter skal man benytte en formel fra de nedenstående tabeller alt efter hvordan dine hypothesis er opstillet (En sided eller to sided). Til at definere W, og finde acceptence region.  

![[(Send) Table 8.2.png]]

Side 485

![[(Send) Table 8.3 One-sided test.png]]

Side 488

![[(Send) Table 8.4 One-sided test.png]]

Side 488

For at finde $z$ og $t$ benyttes de neden forstående funktioner i R.

$$
\begin{align*}
z_{\alpha} &= \text{qnorm(1-alpha)}\\
t_{\alpha} &= \text{qt(1-alpha, n-1)}   
\end{align*}
$$

### P-values

![[(send) P-values.png]]

Side 490

To be able to find a P-value, we will need a observed value $w_{1}$ which is equals to the value of $W$ with the insertion of observations. Then we set c to be equals to $w_{1}$ as below. 

$$
\begin{align*}
P-Value &= P(type \; 1\; error \; when\; c\;=w_{1})\\
&= P(W >w_1)
\end{align*}
$$
### Likelihood Ratio Test

For en simple test skal det nedeforstående stå, Altså med $H_{0}$ er lig med noget, og $H_{1}$ er lig med noget andet. 

![[(Send) Likelihood Ratio Test.png]]

Side 491

Her Beregnes likelihood funktionerne, ud fra de 2 værdier for $\theta$.


Hvis ikke man har en simpel test så benyttes i stedet for neden forstående. 

![[(Send) Likelihood not simpel.png]]

Side 494




## Linear regression


Denne type opgave ville typisk blive læst ved brug af den nedenfor stående metode. Denne løses lettest ved brug af scripts's.  

![[(Send) Simple linear regression.png]]

Side 501

Han kan også nogle gange finde på at spørge efter $R^2$ værdi, som beskriver hvor godt regresions linjen fitter punkterne. 


![[(send) R2 værdi.png]]

Side 505

Yderliger er der i opgave 23-24 nogle resultater som er gode at kende til eksempelvis at finde expected for $\hat{\beta}_{1}$

![[(send) Opgave 23.png]]

![[(send) Opgave 24.png]]


# Markov Chains

# Distributions
## R-code



