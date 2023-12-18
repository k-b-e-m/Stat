## Random Variables (Stochastics variable) General
### Definition
Side 108 er definationen for en Random Variable som følger:
![[stokastisk variabel , Random variables.png]]



### Range of a Random Variable
![[kapitel 3 range of x (R_x).png]]
For discrete vil dette sige at:
$$
R_{X} = \{x_{1}, x_{2},\cdots , x_{n}\}
$$
For Contrinuous vil dette noteres som:
$$
R_{X} = [a,b]
$$

### Independence of Random variables
#### Definition
##### For 2 variable

![[definition 3.2 independent random variables.png]]
Side 113


##### For n variables
![[definition 3.3 definition for independence between random variables.png]]
Side 114

## Functions of Random Variables
### Find PMF
Y=g(X)
$$
\begin{align*}
P_{Y}(y)=\\
P(Y=y)=\\
P(g(X)=y)=\\
\sum_{x:g(x)=y}P_{X}(x)
\end{align*}
$$
#### Example
![[Example 3.16.png]]
Side 144
### Find PDF
![[Theorem 4.1.png]]
Side 173
Dog er 4.1' nemmere at bruge fra ugeseddel uge 6
![[Theorem 4.1'.png]]
Her kan følgende script bruges i matlab:
#### Kode
```MatLab
syms x

%The function on which g functions on

f(x) = 2*exp(-2*x)

% The function to find a PDF for

g = log(x+1)

% the H function

h = finverse(g)

% The H' function

hDerivitive = diff(h)

pdfFunction = abs(hDerivitive)*f(h)

SimpleFunction = simplify(pdfFunction)

disp("g: ")

disp(g)

disp("h: ")

disp(h)

disp("h': ")

disp(hDerivitive)

disp("PDF for function:")

disp(pdfFunction)
```
Alternativt kan Theorem 4.2 benyttes
![[Theorem 4.2.png]]
side 174


### Expected Value of a function (Lotus)
For Discrete
![[Law of unconsious statistician (LOTUS).png]]
Side 144
For Continous
![[Lotus of continuous random variabæe.png]]
side 168
## Discrete
### Definition
![[Discrete random variable.png]]
Side 108 i bogen

### PMF
Også kaldet probability distribution
#### Defination for PMF:
![[definition 3.1.png]]
Side 109.
#### Properties of PMF
![[properties of PMF.png]]
Side 112



### CDF
#### Definition of CDF
![[Definition 3.10 CDF.png]]
Side 135
#### CDF fra PMF
$F_{X}(x) = \sum_{x_{k}<x}P_{X}(x)$
Side 137

### Expectation (Mean) (E[X])
#### Definition and notation
![[Definition 3.11 Expected value (= mean = average).png]]
Side 139
Notations :
![[Notations of Excpected value.png]]
side 140


#### Rules of linear
![[Theorem 3.2 Expection of linear functions.png]]
Side 142


### Variance
Det gælder at:
$Var(X)\geq 0$
Side 146
#### Definition
![[Variance of random variables.png]]
Side 146
samme som:
$$
Var(X)=E[(X - EX)]
$$
##### Eksempel på brug

#### Computational Formula

$$
P_{X}(x) =
\begin{cases}
0.5&&x= - 100 \\
0.5&&x= 100 \\
0 && otherwise
\end{cases}
$$
Benytter os af Lotus
$$
Var(X)=E[(X - EX)^{2}] = \sum_{x_{k}\in R_{X}} (x_{k} - EX)^{2}P_{X}(x_{k})
$$
I dette tilfælde
$Var(X) = ( - 100 - 0)^{2}(0.5) + (100 - 0)^{2}(0.5)=1000
![[Computation of variance.png]]
Side 147

#### Rules of Variance
![[Theorem 3.3.png]]
Side 148
![[Theorem 3.4 varians of indpendendt random variables.png]]
Side 148
### Special Discrete Distributions
##### Bernoulli (p)
En Bernoulli distribution er en fordeling der beskriver et succes tilfælde. Det vil sige at p her beskriver sandsynligheden for at man får en succes. Eksempelvis at man slår en 6'er eller slår krone. Her vil p henholdsvist være $\frac{1}{6}$ og $\frac{1}{2}$ .

![[Lemma 3.1 - bernoulli random variables to binomial distribution.png]]
Side 118
###### Appendix
![[Bernoulli Distribution appendix.png]]

###### PMF Definition
![[definition 3.4 bernoulli random variable.png]]
Side 115

##### Binomial (n, p)
Binomial er n Bernoulli forsøg, [[Lemma 3.1 - bernoulli random variables to binomial distribution.png]]. Her er n antallet af kast og p er sandsynligheden for succes. Eksempelvis kan sandsynligheden for at slå et antal krone på 5 kast med en ærlig mønt beskrives som Binomial(5,$\frac{1}{2}$).
![[Lemma 3.1 - bernoulli random variables to binomial distribution.png]]
Side 118

![[Theorem 3.1 Poisson approximation for binomial.png]]
Side 125

###### MLE for Binomial(m,p)
![[Opgave 4 eksamen 1718.png]]
Svar:
$$
\frac{\bar X}{m} = p
$$

###### Definition for PMF
![[Def 3.6 Binomial distrubution.png]]
Side 118
###### appendix
![[Binomial appendix.png]]

##### Geometric(p)
Geometric distribution beskriver et antal Bernoulli experimenter indtil den første succes. Et eksempel på  dette kunne være hvor mange kast man foretager med en mønt før man får den første krone, altså den første succes.
###### Appendix
![[Geometric appendix.png]]

###### PMF Defination
![[def 3.5 Geometric distribution.png]]


##### Pascal (m,p)
En pascal fordeling er en generalisering af en geometric distribution. Her er p sandsynligheden for succes og m er hvor mange succes vi vil opnå. Derved har vi altså også at:
$$
X\sim Pascal(1,p) \Leftrightarrow X\sim Geometric(p) 
$$
Dette beskrives på side 120.

Eksempelvis kunne X~Pascal(2,0.5) beskrive hvor mange kast med en ærlig mønt man skal foretage for at få 2 kroner.
###### PMF definition
![[definition 3.7 pascal distribution.png]]
Side 121
###### Appendix
![[Pascal appendix.png]]


##### Hypergeometric(b, r, k)
Eksempel på Hypergeometric fra bogen side 121:
![[Hypergeometric example.png]]
###### PMF definition
![[Definition 3.8 Hypergeometric distribution.png]]
Side 122

###### Appendix
![[Hypergeometric appendix.png]]

##### Poisson ($\lambda$)
Denne beskriver at et antal hændelser sker over en tidsperiode. Dette kunn eksempelvis være at den beskriver hvor mange kunder der besøger en butik om dagen, hvor mange mennesker der dør af en bestemt hændelse om året eller hvor mange opkald man får inden for en time.

![[Theorem 3.1 Poisson approximation for binomial.png]]
Side 125
###### PMF definition
![[definition 3.9 Poisson distribution.png]]
Side 123
###### Appendix
![[Poisson appendix.png]]


### Eksempler på problemer
##### P(X $\leq$ a) og P(a<X<b)

Example:

$$
P_{X}(x)
\begin{cases}
0.1&& \text{for x = 0.2} \\
0.2&&\text{for x = 0.4} \\
0.2&& \text{for x = 0.5} \\
0.3&&\text{for x = 0.8} \\
0.2&&\text{for x = 0.2} \\
0&&\text{otherwise}
\end{cases}
$$
###### Med PMF
$$
\begin{align*}
P(X\leq0.5) =\\\\
=P(X=0.2) + P(X=0.4) + P(X=0.5)\\
=0.1 + 0.2 + 0.2\\
=0.5
\end{align*}
$$
og
$$
\begin{align*}
P(0.25<X<0.75)=\\
=P(X=0.4) + P(X=0.5)\\
=0.2 + 0.2 \\
= 0.4
\end{align*}
$$


###### Med CDF
![[Usefull formula for CDF.png]]
Side 137
## Continuous
### Definition of Continuous
![[defination 4.1 -X with CDF is continious.png]]
Side 163
### CDF
#### Find CDF fra PDF
$$
F_{X}(x)=\int_{ - \infty}^{x}f_{X}(u)du
$$
hvor $f_{X}(x)$ er en PDF 
### PDF
#### Find PDF
![[Defination 4.2 A probability density function (PDF).png]]
Side 164

#### Properties of the PDF
![[Properties of a pdf.png]]
Side 165


### Expected Values (Mean)(E[X])
![[Expected value for continous random variable.png]]
Side 167
Hvor $-\infty,\infty$  Skal erstattes med lower og upper bound

### Variance
![[varians for a continuos random variable.png]]
Side 169
Skal regnes på samme måde som Discrete

### Special Distributions
#### Exponential($\lambda$)

##### Definition
![[exponential distribution.png]]
Side 180
##### Memoryless
![[Memoryless exponential.png]]
Side 183
##### Appendix
![[Exponential appendix.png]]



#### Laplace($\mu$ ,b)
##### Appendix
![[Laplace Appendix.png]]

#### N($\mu$ ,$\sigma^{2}$ ) (Gaussian Distribution)
##### Definition
![[definition normal random variable.png]]
Side 187
##### Standard Normal Random Variable (Z)
###### Definition
![[definition of a normal (standard gaussian) random varible.png]]
Side 184


###### EX and Var
![[expected value and varians from a normal random variable.png]]
Side 185
###### CDF $\Phi(x)$ 
![[CDF of a standard normal distribution.png]]
Side 185

###### Properties of CDF $\Phi(x)$
$$
\begin{align*}
1. lim_{x\rightarrow\infty} \Phi(x)=1,  lim_{x\rightarrow - \infty} \Phi(x)=0\\
2. \Phi(0)=\frac{1}{2}\\
3. \Phi( - x)=1 - \Phi(x)  
\end{align*}
$$
Side 186
##### Notes and properties
If X~N($\mu$ , $\sigma^{2}$) and Z = $\frac{X - \mu}{\sigma}$ Then Z is a standard normal variable. Z~N(0,1). Side 187

![[Theorem 4.3.png]]
Side 189

##### Appendix
![[Gaussian appendix.png]]

#### Beta(a, b)
##### Appendix
![[Beta appendix.png]]

#### $\chi^{2}$ (n) (Chi - squared)
##### Defination
![[Chi-squared distribution def.png]]
side 462
##### Theorem 8.3
![[Theorem 8.3.png]]

##### Appendix
![[appendix chi squared.png]]



#### T(n) The t - Distribution
##### Definition
![[t distribution def.png]]
side 464
##### Theorem 8.4
![[Theorem 8.4.png]]
Side 465
##### Appendix
![[T dist appendix.png]]

#### Gamma($\alpha$ , $\lambda$ )
##### Properties of the Gamma and notes
![[Properties of gamma function.png]]
Side 191 
Vær opmærksom på at n er positive integegers hvor $\alpha$ er alle positive realle tal.

Gamma(1,$\lambda$ ) = Exponential($\lambda$) - Side 192

![[Sætning b.png]]
fra ugeseddel 8


##### Appendix
![[Gamma appendix.png]]

#### Erlang(k,$\lambda$ )
##### Appendix
![[Erlang Appendix.png]]

#### Uniform(a, b)
##### Appendix
![[Uniform Appendix.png]]



##### Definition
![[definition for a uniform distribution'.png]]
Side 180
##### Appendix
![[Uniform Appendix-1.png]]

### Eksempler på problemer

#### Example 1
![[problem 1 - example.png]]
Side 175




