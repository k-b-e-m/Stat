![[Aflevering 9 beskrivelse.png]]

Vi kan nu beskrive de 2 CDF for $X_{1}$ og $X_{2}$. Ud fra appendix ved vi at En CDF for en exponential funktion ser sådan her ud:
$$
F_{X}(x)=\begin{equation}
\begin{cases} 1 - e^ {- \lambda x} && x>0 \\
0 && otherwise
\end{cases}
\end{equation}
$$
Derved ved vi at $X_{1}$ og $X_{2}$ har de to CDF:
$$
F_{X_{1}}(x_{1})=\begin{equation}
\begin{cases} 1 - e^ {- \lambda_{1} x_1} && x_{1}>0 \\
0 && otherwise
\end{cases}
\end{equation}
$$
$$
F_{X_{2}}(x_{2})=\begin{equation}
\begin{cases} 1 - e^ {- \lambda_{2} x_{2}} && x_{2}>0 \\
0 && otherwise
\end{cases}
\end{equation}
$$
___
Vi definere $F_{Y}(y)$ som: $F_{Y}(y) = P(Y\leq y)$.
Vi ved her at Vores Y er defineret som min($X_{1},X_{2}$). Dette kan vi nu indsætte i vores form:
$$
F_{Y}(y) = P(min(X_{1},X_{2})\leq y)
$$
Dette kan omskrives ved hjælp af komplementet:
$$
F_{Y}(y)=1 - P(min(X_{1},X_{2})>y)
$$
Ud fra hintet ved vi at:
$$
min(x_{1},x_{2})>y \Leftrightarrow x_{1}>y \text{ og } x_{2}>y
$$
Derved ved vi at dette yderligere kan omskrives til:
$$
F_{Y}(y)=1 - P(X_{1}>y,X_{2}>y)
$$
Desuden ved vi at $X_{1},X_{2}:Independent$ . Vi ved om independent continous variabler:
![[Independent random variables rules and definition for two contious random variables.png]]
Dette kan vi nu bruge til at skrive omskrive yderligere til:
$$
F_{Y}(y)=1 - P(X_{1}>y)P(X_{2}>y)
$$
Vi kan yderligere nu ved brug af komplementet omskrive til:
$$
F_{y}(y)=1 - ((1 - P(X_{1}\leq y))(1 - P(X_{2}\leq y)))
$$
Yderligere har vi fundet CDF for begge af de stokastiske variabler. Det vil sige at vi kan finde $P(X_{n}\leq y)$ ved $F_{X_{n}}(y)$
Dette vil nu sige at vi kan omskrive yderligere:
$$
F_{y}(y)=1 - (1 - F_{X_{1}}(y))(1 - F_{X_{2}})
$$
Vi ved at for en given CDF kan vi finde PDF således:
![[Defination 4.2 A probability density function (PDF).png]]
Derved kan vi nu differencere $F_{y}(Y)$ for at finde PDF'en
$$
\begin{align}
f_{Y}(y)= \frac{dF_{Y}(y)}{dy}1 - (1 - (1 - e^{ - \lambda_{1}y}))(1 -(1 - e^{ - \lambda_{2}y}) )\\ = (\lambda_{1} + \lambda_{2})e^{ - (\lambda_{1} + \lambda_{2})y}\\

\end{align}
$$
Derved har vi nu fundet fordelingsfunktionen for Y.
Vi har at en eksponential fordeling  har en PDF på den følgende form:
$f_X(x)=\lambda e^ {- \lambda x}$
Vi kan ud fra dette se at vores fordelingsfunktion for Y er en eksponential fordeling.
Altså at Y ~ exponential($(\lambda_{1} +  \lambda_{2})$).