
Integrationsregler:
substitutionregel:
lad g være en differentiabel funktion på intervallet [a,b] hvor a < b. så gælder der:
$$
\int_{a}^{b}f(g(x))g'(x)dx=\int_{g(a)}^{g(b)}f(u)du
$$
#eksample 
$$
\int_{0}^{2}xe^{x^{2}}dx
$$
$f(x)=e^{x}$
$g(x)=x^{2}$
$u=g(x)$
$\frac{du}{dx}=\frac{dg}{dx}=g'(x)=2x$
$du = 2x dx$
x = ${0,\cdots 2}$
$u= 0^{2},...,2^{2}$
 $=0,\cdots ,4$
 
___
Partiel integration:
$$
\int_{a}^{b}f(x)g'(x)dx=[f(x)g(x)]_{a}^{b}-\int_{a}^{b}f'(x)g(x)dx
$$
___
Produktreglen
$(f(x)g(x))'=f'(x)g(x)+f(x)g'(x)$
___
#Example 
find:
$$
\int_{0}^{1}xe^{x}dx
$$
$f(x)=x, g(x)=e^{x}$
$f'(x)=1, g'(x)=e^{x}$
$$ 
[xe^{x}]_{0}^{1} - \int_{0}^{1}1\cdot e^{x} dx = e^{1}-0 - [e^{x}]_{0}^{1}=e-0-(e-1)=1
$$
___

___
Exponential fordeling:
$$f(x)=\begin{equation}\begin{cases} 
\lambda e^{-\lambda x} \\
0 && otherwise
\end{cases}\end{equation}$$
$R_{X}= (0,\infty), F_{X}(x)=1-e^{-\lambda x}$ 
$EX = \int _{-\infty}^{\infty} xf(x)dx= \frac{1}{\lambda}$
$Var(X)=\frac{1}{\lambda ^{2}}$ 
$E[X^{n}]= \frac{n!}{\lambda^n}$ - ugeseddel 7
$P(X>x)=e^{-\lambda x}$

For en kontinuer stokastisk variabel på (0,$\infty$):
$X\text{ glemsom} \Leftrightarrow X~exponential(\lambda)$ 
___
![[definition of a normal (standard gaussian) random varible.png]]


def Z ~N(0,1) Standard normal fordelingen
hvis $f_{Z}(z)= \frac{1}{\sqrt(2\pi)}e^{-\frac{z^{2}}{2}}$ 
$\phi(z)=P(>\leq z) = \int _{-\infty}^{z}\frac{1}{\sqrt(2\pi)}e^{-\frac{x^2}{2}}dx$
$EZ = 0$ $Var(Z)=1$
$EZ^{2}=1$ - benytter sig af Lotus og integrations regler. - Se forlæsning for detaljer.
___

![[definition normal random variable.png]]

