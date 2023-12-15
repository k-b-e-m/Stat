Kan bruges til at approximere komplicerede integraler ved hjælp af simulation.
#Example 
Hvad er $\int _{0}^{1} e^{x^{2}}dx$ Kan ikke regnes rigtig med "normal" matematik.
vælg: $X~Uniform(0,1)$ og en variabel Y=g(x),$g(X)=e^{x^2}$
 [[Lotus of continuous random variabæe.png]]
$EY = E[g(x)] = \int _{-\infty} ^{\infty} g(x)f(_{X}x)dx = \int_{0}^{1} e^{x^{2}}\cdot 1 dx$  
vi ved at $R_{X}= {0,1}$
Kan løses i R:
```R
N=1000000
X=runif(n,0,1) #uniform fordeling
Y=exp(x^2)
mean(Y)
```
mean(Y)= 1.463163
numerisk resultat = 1.4625
Derved er vi tæt på, større sample gør at man kan komme tættere på.
