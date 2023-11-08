![[Law of unconsious statistician (LOTUS).png]]
Lotus tillader og at beregne EY uden at beregne PMF for Y først.

#Example 
[[Lotus for continuous random variables.png]]
X ~Bernoulli(p)
$g(x)=x^{2}$
$R_{x}=\{0,1\}$
$E[x^{2 ]=}0^{2}(1-p)+1^{2}\cdot p = p$
vidst at bernoullis middelværdi altid er p [[Bernoulli distribution.png]]
___
[[3.2 Cummulative Distribution Function CDF]] - varians
X stokatastisk variabel med $\mu_{X}= EX$
$varians = var(X)=E[(X-\mu_x)^2]$
$var(X)\geq 0$
OBS varians er ikke lineært.
[[Variance of random variables.png]]
alternativ formel:
$Var(X)=E[X^{2}]-E[X]^{2}$
Kan bruges fordi:
$Var(X)=E[(X-\mu_{X)^2}]$
ganger ud:
$Var(X)=E[X^{2}-2\mu_{X}+\mu_{X}^{2}]$
E er Linear:
Var(X)=$E[X^{2}]-2\mu_{X}X + \mu_{X}^{2}$
Var(X)=$E[X^{2}]-2E[X]^{2}+E[X]^{2}$
$Var(X)=E[X^{2}]-E[X]^{2}$
___
$Standardafvigelse = SD(X)=\delta_{X}= \sqrt{var(X)}$
[[Definition of standard deviation.png]]
Standard afvigelse er godt til at fortælle hvor meget en variabel "svinger".
___
#Example 
$X~Bernoulli(p) EX=p$
$E[X^{2}]=p$ (LOTUS)
$var(X) = p- p^{2} = p(1-p)$ 
___
![[Theorem 3.3.png]]
Som konsekvens af 3.3
Grunden til b kan fjernes er fordi den blot rykker punktet som varians "svinger" over.
Derfor StandardVarians $SD(aX+b)= \sqrt{a^{2}Var(x)}=|a| \cdot SD(x)$
[[proof of theorem 3.3]]
![[Theorem 3.4 varians of indpendendt random variables.png]]
___
#example 

![[example 3.20.png]]

Varians of Binomial = $np(1-p)$
___
Gennemgået R #R
```R
####StandardFunktioner####
exp(1)

log(1) #naturlige logaritme

cos(1)
####DefinerVariabler####

x=5

y=3

x+y
#####Vektor og variabler####

x=c(2,0,-1,5) # c= "combine

y= 5:8 ##Alle Heltal fra 0 - 14

2*x

x/2

exp(x)

max(x)

x[2]

x[2:3]


x+1 ###Lægger her 1 til hver indgang af de oprindlige tal

x+y

sum(x)

cumsum(x)

mean(x)

var(x) #emperiske varians
plot(x,y)
b = (-10:10)/100
t = 10*sin(b)
plot(t,b)

#tegn flere punkter i et plot
points(b,t)

##### Udfald af stokastiske variabler
sample(1:6,1)
#hvordan slår jeg 10 gange
kast = sample(1:6,10,TRUE) ##Adds replacement
plot(kast)
rnbinom(1,10,0.9) #R tæller antal fiasko

#eksempel fin alle indices hvor de positive tal er
x>0
x[x>0]
#Find alle positive tal der er større en 4
x[x>0&x>4]
### simulering
### 50 studerende har en bil med sandsynlighed 50 %
### Spørgsmålet er om 30 parkeringspladser er nok
N=1000000
X=rbinom(N,50,0.5)
y=X>30
points(X,y)
mean(y)
pbinom(30,50,0.5)
##Geometrisk



```
