Hvis X og Y er diskret medføre det at den simultatne $P_{XY}(x,y)$ også er diskreet. Dog gælder det ikke at hvis X og Y begge er kontinurere at $P_{XY}(x,y)$ er kontinuer.
___
#Example 
5.17
antag at vi har to stokastiske variabler X og Y der har den simultan tæthed:
$$
f_{XY}(x,y) =
\begin{equation}
\begin{cases}
10x^{2}y && 0\leq y\leq x \leq 1 \\
0 && otherwise.
\end{cases}
\end{equation}
$$
a) er X større end Y?
X skal være mindst ligeså stor som Y.

b) tegn $R_{XY}$
![[Forlæsning 15.png]]
c)
beregn $P(Y\leq X/2)$
Vi skal omforme dette til $P((X,Y)\in A)$
Her definere vi A som:
$$
A=\{(X,Y)\in \mathbb{R} : y\leq \frac{x}{2}\}
$$
Vi kan nu integrere for  $A \cap R_{XY}$ 
$$
\int_{0}^{1}(\int_{0}^{x/2} 10x^{2}y dy)dx
$$
$$
\int_{0}^{1}10x^{2} \int_{0}^{2}\frac{x}{2}ydy \Rightarrow [\frac{1}{2} y^{2}]_{0}^{\frac{x}{2}}=\frac{1}{2}\cdot \frac{(\frac{x}{2})^{2}-1}{2}\cdot 0 = \frac{x^{2}}{8}
$$
$$
\int_{0}^{1}10x^{2}\cdot \frac{x^{2}}{8}=\frac{1}{4}
$$
___
Partielle aflede
$g:\mathbb{R}\rightarrow\mathbb{R}$ dens afledet er g'(x) eller $\frac{dg}{dx}(x)$
$f:\mathbb{R}^{2}\rightarrow \mathbb{R}$ ,f(x,y) Afledet af f(x,y) mht til x: g'(x)=$\frac{d}{dx}f(x,y)$
___
#Example 
$f(x,y)=x^{3}\cdot y$ 
$\frac{d}{dx}f(x,y) = \frac{d}{dx}(x^{2}\cdot y) = 3x^{2}y$
$\frac{d}{dy}(f(x,y))=\frac{d}{dy}(x^{3\cdot}y) = x^{3}\cdot 1 = x^{3}$
___

