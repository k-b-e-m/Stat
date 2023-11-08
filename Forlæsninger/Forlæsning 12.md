
StandardNormalFordeling
$X~N(0,1)$
Normal Fordeling:
$X\sim N(\mu, \sigma ^2)$
![[definition normal random variable.png]]

![[Theorem 4.3.png]]
$Y = a+bx$
$E[a+bx]= a+bEX$
$Var(a+bx) = b^{2}Var(X)=b^{2}\sigma ^{2}$
___
standardisereing:
$z=\frac{Y-EY}{\sqrt{var(Y)}}$
___
Storetals lov
$\frac{X_{1}+\cdots+X_{n}}{n} \rightarrow ^{n\rightarrow \infty} E_{X} = \mu$
$\frac{X_{1}+\cdots+X_{n}}{n} - \mu \rightarrow ^{n\rightarrow \infty} 0$
Hvor hurtigt går forskellen mod 0?
svar: $\sqrt{var(\frac{X_{1}\cdots+X_{n}}{n})} =\frac{\sigma}{\sqrt{n}}$
Hvor sigma er spredningen/variansen
middelværdi:
$E[\frac{X_{1}\cdots+X_{n}}{n})]$
___
CLT
$\frac{ \frac{X_{1}+ \cdots +X_{n}}{n} - \mu}{\sqrt{var(\frac{X_{1}\cdots+X_{n}}{n})}} \rightarrow Z \sim N(0,1)$
StandardAfvigelsen
[[Definition of standard deviation.png]]
$$
\sqrt{n}\frac{1}{\sigma}(\frac{X_{1+\cdots}+ X_{n}}{n} -\mu \rightarrow Z \sim N(0,1))
$$
når n er stor:
$$
\sqrt{n}\frac{1}{\sigma}(\frac{X_{1+\cdots}+ X_{n}}{n} -\mu \approx Z \sim N(0,1))
$$

$\Rightarrow \frac{X_{1}\cdots + X_{n}}{n} \approx \frac{\sigma}{\sqrt{n}}Z +\mu \sim N\left(\mu, \frac{\sigma^{2}}{n}\right)$ 
EX = $\mu$ 
Var = $\frac{\sigma^{2}}{n}$ 
___
![[Gamma distribution definition.png]]

$\alpha$ >0 :$\Gamma(x) = \int_{0}{\infty}X^{\alpha-1}e^{-x}dx$
Vigtige egenskaber:
a) $\Gamma(\alpha+1))=\alpha\Gamma(\alpha))$ $\alpha$ >0
b) $\Gamma(n)=(n-1)!)$
c) $\Gamma(\frac{1}{2}))=\sqrt{\pi}$
[[Properties of gamma function.png]]
___
#Example 
1) $\Gamma(\frac{3}{2})=\Gamma(\frac{1}{2}+1)$
bruger regel a = $\frac{1}{2}\Gamma(\frac{3}{2})=\frac{1}{2}\pi$
2)
$\Gamma(\frac{5}{2})=\Gamma(\frac{3}{2}+1)$
bruger a$= \frac{3}{2}\Gamma\left(\frac{3}{2}\right) = \frac{3}{4}\sqrt{\pi}$
___
Gamma fortsat
$EX = \frac{\alpha}{\lambda}$
$Var(X) = \frac{\alpha}{\lambda^{2}}$
___
sætning B
1) hvis X $\sim$ Gamma($\alpha_{1}$ ,$\lambda$ )  og Y $\sim$ Gamma($\alpha_{2}$ , $\lambda$ ) er ufhængige så gælder det at X+Y $\sim$ Gamma($\alpha_{1}+ \alpha_{2}$, $\lambda$ )
2) Hvis x $\sim$ Gamma($\alpha$ ,$\lambda$ ) og b>0 så er bX $\sim$ Gamma($\alpha$ , $\lambda$ /b).
___
#Example 
$\alpha$ = 1
x>0
$f_{X}(x) = \frac{\lambda}{\Gamma(1)}x^{0}e^{-\lambda x}=\lambda e^{-\lambda x}$
det vil sige at Gamma(1,$\lambda$ )=Exponential($\lambda$)
___
#Example 
![[Coupon problem.pdf]]

Vi har her at:
$X_{0}$ er antal træk til første succes
$X_{n}$ er antal træk til n succes efter n-1 succes
det vil sige at $T_{n} = X_{0}+\cdots X_{n-1}$ 
$X_{j} \sim Geometrisk(p_{j})$
$p_{j} = \frac{gunstig}{mulig}$
Der er n mulige og de gunstige er de kort vi ikke har trukket endnu. Altså n-j:
$p_{j}= \frac{n-j}{n}$ 
$EX_{j}=\frac{1}{p} = \frac{n}{n-j}$  udfra hvad vi ved om geometrisk fordeling
$E[T_{n}]=E[X_{0}+\cdots X_{n-1}]$ Denne er linær derfor kan vi:
		$= EX_{0}+\cdots EX_{n-1}$
		$=\sum_{j=0}^{n-1}EX_{j} = \sum_{j=0}^{n-j}\frac{n}{n-j} = n\sum_{j=0}^{n-1}\frac{1}{n-j} = n\sum_{k=1}^{n}\frac{1}{k}$-  Harmonisk sum
		fra ugeseddel et ved vi så at:
		$n\sum_{k=1}^{n}\frac{1}{k} \approx nlog(n)$
Eksempelvis hvis der er 20 forskellige kort:
har vi:
$20\sum_{k=1}^{20}\frac{1}{k} = 71,95$



