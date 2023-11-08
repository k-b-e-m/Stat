Kristopher B.E. Märcher, studienummer: 202205825

![[Aflevering 7 - beskrivelse.png]]
Først skal vi her argumentere for at $\gamma$ er en strengt monotonisk differentiabel funktion. Vi vil derfor kigge på funktionen inden for 0-1.
```mathpad
%$1:=3*x^2
%$2:=-log(3*x)
f(x):=3x^2
g(x):=-(1/2)log(f(x))
plot(g(x), [-0.106,3.04], [-0.906,1.37])==?
```


Det kan her foroven ses at funktionen er strengt aftagende, inden for det interval som X er defineret. Den er desuden differentiabel fordi det er en sammenhængende funktion og at det ikke er en stykvis defineret funktion inden for vores interval.
Med disse oplysninger gør det at man kan benytte sig af theorem 4.1.
![[Theorem 4.1.png]]
Her kan vi benytte os af den alternative version af theorem 4.1, også kendt som theorem 4.1'. Den ser ud som følger:
$$
f_y(y)=
\begin{equation}
\begin{cases}
|h'(y)|f_x(h(y)) &&  y\in R_{Y} \\ \\
0 && otherwise
\end{cases} 
\end{equation}
$$
Hvor h er den inverse funktion til $\gamma$ i vores tilfælde.
Vi skal nu finde den inverse funktion til $\gamma$ . Den inverse funktion til $\gamma$ er:
$$
h(x)=e^{-2x}
$$
Vi skal nu differentiere denne funktion. Dette giver os:
$$h'(x)=\frac{d}{dx} (e^{-2x})=-2e^{-2x}$$
Nu kan vi benytte os af theorem 4.1':
$$
|-2e^{-2y}|\cdot 3\cdot(e{^{-2x}})^{2}
$$
Dette kan simplificeres til:
$$
6e^{-6y}
$$
Derved bliver hele PDF for $\gamma$ :
$$
f_{\gamma}(y)=
\begin{equation}
\begin{cases}
6e^{-6y} && \text{for } y \in R_{y} \\
0 && otherwise
\end{cases}
\end{equation}
$$
Dette er en eksponential fordeling. Dette kan ses ud fra definationen for en eksponential fordeling:
![[exponential distribution.png]]
Hvor $\lambda$ for vores har en værdi på 6.