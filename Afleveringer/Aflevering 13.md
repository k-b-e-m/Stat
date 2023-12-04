![[Aflevering 13.png]]

Det ovenstående tekst beskriver en markovkæde som ser ud som følger:

![[Attachments/Diagram 1.svg]]
Man kan desuden fra denne markovkæde finde overgangsdiagrammet der ser ud således:
$$
P = 
\begin{bmatrix}  
0.94 && 0.06\\
0.12 && 0.88
\end{bmatrix}
$$
Vi ved at i år 2008 ser fordelingen af ejere og lejere ud således:
$$
\begin{bmatrix}0.36,0.64\end{bmatrix}
$$
For at finde ud af hvor mange der er i 2028 og 2038 kan vi regne det ud således:

![[get n+1 value for a markov chain. Build upon law of total prob.png]]
Ved at bruge den ovenstående formel får vi
$$
\begin{align*}\\
\text{2008: } &&              \pi^{(0)}=\begin{bmatrix}0.36,0.64\end{bmatrix}\cdot P^{0} &= \begin{bmatrix}0.36,0.64\end{bmatrix}\\
\text{2018: } &&              \pi^{(1)}=\begin{bmatrix}0.36,0.64\end{bmatrix}\cdot P^{1} &= \begin{bmatrix}0.42,0.58\end{bmatrix}\\ 
\text{2028: } && \pi^{(2)}=\begin{bmatrix}0.36,0.64\end{bmatrix}\cdot  P^{2} &= \begin{bmatrix}0.46,0.53\end{bmatrix}\\
\text{2038: } && \pi^{(3)}=\begin{bmatrix}0.36,0.64\end{bmatrix} \cdot  P^{3} &= \begin{bmatrix}0.50,0.50\end{bmatrix}
\end{align*}
$$


Derved er der i 2028 46% Boligejere og 53% boliglejere.
I 2038 er der 50% boligejere og 50% boliglejere. Her skal det dog siges at der er foretage afrunding til to decimaler.