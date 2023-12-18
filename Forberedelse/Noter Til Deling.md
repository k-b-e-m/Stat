
# Markov Chains
***Discrete-Time Markov Chains*** (side 631)
Den generelle ide bag Markov Kæder kan summeres ned til: "Conditioned on the current state, the past and the future states are independent."

The definition for Discrete-Time Markov Chains:
![[Defination for en Discrete-Time Markov Chain.png]]
#### ***Transition Probability*** (side 631)
#transitionProbability #reverseTransitionProbability
![[ProbabilityCalculation.png]]
Det kan beskrives som at være i state $i$, og "transition" til state $j$ med en sandsynlighed på $p_{ij}$. 

***Går man modsat***
Hvis man vil regne tilbage i tiden skal man bruge **Baye's formel** og kan på den måde udregne chancen for at have været i en forrig state. 
![[Baye's formula.png]]
#### ***State Transition Matrix/Diagram*** (side 631/632)
#stateTransitionMatrix #stateTransitionDiagram 
***State Transition Matrix***
En state transition matrix er en matrix bestående af alle states i en markovkæde, samt deres sandsynligheder. Hver række ( ---- ) svarer til en given state og hvad sandsynligheden er for at den kan nå andre states, hvor hver diagonal ( | ) er en given state. 
Eksempel på state transition matrix:
![[State transition matrix.png]]
Overgangsmatricen bliver ofte betegnet med et P, og dens værdi på i’te række og j’te søjle bliver ofte betegnet med p$_{ij}$ . Det smarte ved denne notation er dog også, at p$_{ij}$ svarer til sandsynligheden for, at gå fra tilstand i til tilstand j. 
Samtidig skal en række altid være lig med 1, hvis man lægger sandsynlighederne sammen. 


***State Transition Diagram*** 
Et state transition diagram er ofte baseret på en state transition matrix. Det er i bund og grund en afbildning af denne matrix, hvor hver state og dets sandsynligheder for at nå andre states afbilledes (ligesom en automata). 
Eksempel på state transition diagram:
![[State transition diagram example.png]]

***Sammenhæng***
Eksempel på hvordan en state transition matrix og et state transition diagram hænger sammen:
![[SammenhængMellemDiagramOgMatrix.png]]

#### ***Probability Distribution*** ($\pi$) 
#trylleFormlen #probabilityDistribution #nSteps
Definationen for en $\pi$-matrice (side 634)
![[Defination af PiMatricen.png]]
Her er $P$ vores state transition matrix. Når vi opløfter vores state transition matrix, er det det samme som at gange matricen med sig selv $n$ gange.
Dette gøres nemmest via CAS værktøj. 

***Opskrivning*** (side 635/636)
En $n$-step transition probability kan skrives som:
p$^2_{ij}$ = P(X$_2$ = j | X$_0$ = i). 
Som nævnt ved vores probability distribution findes den opløftede state transition matrix ved at gange matricen med sig selv, som set herunder:
![[2StepMatrix.png]]
Mere generelt kan det skrives som
![[nTransitionMatrix.png]]


#### ***Chapman-Kolmogorov Equation*** (side 636)
#chapman-KolmogorovEquation
Definationen for Chapman-Kolmogorov equation
![[ChapmanKolmogorov.png]]
NOTE:  Her svarer $k$ til de ukendte mellem $i$ og $j$. 

#### Klasser
#communicatingClasses #equivalenceClasses #recurrentClasses #transientClasses
***Communicating Classes*** (Equivalence classes) (side 638)
En communicating i en Markov Chain er et sæt af klasser som **communicater** med hinanden.
Dette opskrives som Class X = {state 1, $\dots$ , state r}. 
Eksempel:
![[Equivalence klasser.png]]


***Recurrent og Transient Klasser***
Når det kommer til klasser kan de også deles op som **recurrent** og **transient** klasser, da states i samme klasse alle sammen endten er **recurrent** eller **transient**.
Antal besøg til en specifik state kan udregnes via:
![[Antal besøg til en state.png]]


#### Termer for klasser, states og relationer
#accessible #communicate #equivalenceRelation
#irreducible #recurrent #transient 
***Accessible*** (side 637)
State $j$ er **accessible** fra en state $i$ hvis $p^{n}_{ij}> 0$ for et givent n. 
Det opskrives som $i \rightarrow j$. 

***Communicate*** (side 637)
To states **communicates** hvis de er **accessible** fra hinanden.
Det opskrives som $i \leftrightarrow j$  og svarer til $i \rightarrow j \land j \rightarrow i$.  

***Equivalence Relation*** (side 637)
Communication er en *equivalence* relation. Dette vil sige at:
- Alle states **communicater** med sig selv, altså $i \leftrightarrow j$
- Hvis  $i \leftrightarrow j$,  så  $j \leftrightarrow i$ 
- Hvis  $i \leftrightarrow j$  og  $j \leftrightarrow k$,  så $i \leftrightarrow k$

***Irreducible*** (side 638)
En markov kæde er irreducible hvis alle states **communicater** med hinanden. 
ELLER hvis markov kæden kun har en klasse. 
Kan skrives matematisk som $\forall i,j \in S : i \leftrightarrow j$.
Er en markov kæde irreducible er alle dens tilstande recurrent

***Recurrent*** (side 639)
For en givet state $i$, hvor   $f_{ii} = P(X_n = i, \text{ for some } n \geq 1 \,|\, X_0 = i)$
En state $i$ er **recurrent** hvis $f_{ii} = 1$.
Så hvis man aldrig kan komme ud af klassen.

***Transient*** (side 639)
For en givet state $i$, hvor   $f_{ii} = P(X_n = i, \text{ for some } n \geq 1 \,|\, X_0 = i)$
En state $i$ er **transient** hvis $f_{ii} < 1$.
Så hvis man har en chance, lige meget hvor lille den er, for at komme ud af klassen.

#### ***Periodicity*** (periodisk) (side 640)
#periodicity #periodisk #aperiodisk
Perioden for en tilstand $i \in S$  er defineret ved den største fælles divisor mellem antal skridt man kan tage fra tilstand $i$ til sig selv. Med andre ord kan man lade $A = \{n \in N : p^n_{ii} > 0\}$ betegne mængden af alle antal mulige skridt, og finde sfd(A).

Eksempelvis, hvis det tager 3, 6, $\dots$ skridt at komme til $i$ er $d(i)$ = 3. Hvis det kan tage 2 og 3 skridt er $d(i)$ = 1. Det er altså sfd af antal skridt, man kan tage for at komme tilbage til $i$. 
OBS: Hvis der er selvløkker, vil perioden være 1 i markov kæden. (Da sfd(1,n) = n)
Hvis  $i \leftrightarrow j$,  så er $d(i) = d(j)$

***Periodisk period***
Hvis $d(i) > 1$

***Aperiodisk period***
Hvis $d(i) = 1$
En hurgtig måde at se, om en tilstand er aperiodisk er at se, om der er selvløkker, eller om andre tilstande i samme klasse har selvløkker.

Måder at bestemme om noget er **Aperiodic** hvis vores MK er **irreducible** :
![[Ways To Decide Aperiodic.png]]

#### Law of Total Probability with Recurssion 
Udregninger ved brug af metode (for absorption modellen)  på side 642/643
##### ***Absorption*** 
#absorptionProbabilities #absorption
Når man aldrig kan komme væk fra en state er den **absorping**. 

***Absorption Probabilities*** 
Brugt for at finde sandsynligheden for at man kommer til at side fast i en **absorpting** klasse. 
Defination og brug (side 644):
![[Absorption Probabilities.png]]
NOTE:  Hvis $X_{n} = i$, så vil den næste state være $X_{n+1} = k$ med sandsynligheden $p_{ik}$

Eksempel på brug med given matrice: 
![[Eksempel 1 absorption.png]] ![[Eksempel 2 Absorption.png]] ![[Eksempel 4 Absorption.png]]![[Eksempel 3 Absorption.png]]
FORKLARING:
- Vi får givet en matrice (første billede). 
- Med den givne matrice bruges formlen for **absorption probability** (andet billede). NOTE:  Her bruges "Total Probability with Recursion" 
- Derefter solves der for $a_1$ og $a_2$ (tredje billede).
- Til sidst udregnes sandsynligheden ved formlen:   $a_{i} + b_{i} =1$. Dette svarer det modsatte af hvad vi regnede ud i step 3. Den er 0 hvis man aldrig kan komme derhen og 1 hvis man kun kan kommer derhen. 
#VIGTIG_NOTE 
NOTE:  Før man kan gøre dette bliver man muligvis nødt til omforme sine **recurrent** klasser til **absorbing** states, så der kun er **transient** og **absorbing** states. (Bør gøres for at være præcis)


##### ***Mean Hitting Times*** 
#meanHittingTimes
Tiden der går før man rammer en bestemt state for første gang. 
Defination og brug (side 645): 
![[Mean Hitting Times Defination.png]]
NOTE:  Under udregning bruges "Total Probability with Recursion" igen ligesom ved **absorptions** eksemplet. Tingene sættes bare ind anderledes pga. forskellen mellem formlerne. 

##### ***Mean Return Times*** 
#meanReturnTimes
Den gennemsnitlige tid det tager for at komme tilbage til en given tilstand. 
Den hænger derfor MEGET sammen med **Mean Hitting Times**.
Defination og brug (side 647):
![[Mean Return Times Definition.png]]
NOTE:  Det er den midterste formel på ovenstående, der bruges for at regne **Mean Return Times**. Nederste formel er basically bare den samme som fra **Mean Hitting Times**.

#### Grænse- og Stationær-fordeling
#limitingDistributions #grænsefordeling
#stationaryDistribution #stationærfordeling
#udregningAfStationær/Grænse-fordeling 
#irreducibleAndAperiodicMK
***Forskellen på Grænsefordeling og Stationærfordeling***
Man har en stationærfordeling referer til en statistisk fordeling der forbliver konstant. Eksempelvis hvis en middelværdi og varians forbliver konstant over tid. 
Man har en grænsefordeling når antallet af observationer går mod uendelig. 


***Stationary Distribution*** (stationær fordeling)
- Handler om egenskaberne ved en bestemt fordeling over tid eller rum. 
- For en stokastisk proces betyder stationaritet, at dens statistiske egenskaber forbliver konstante over tid. For eksempel forventningsværdi, varians og korrelationer kan forblive uændrede. 

Defination og udregning:
![[Stationær fordeling.png]]


***Limiting Distributions*** (grænsefordeling)
- Handler om, hvordan fordelingen af en stokastisk variabel udvikler sig, når antallet af observationer går mod uendelig. 
- Centralgrænsesætningen er et eksempel på en grænses fordeling. Den siger, at summen eller gennemsnittet af uafhængige og identisk fordelte stokastiske variabler vil konvergere mod en normalfordeling, uanset den oprindelige fordeling af de individuelle variabler.

Defination og udregning (side 649):
![[Limiting Distributions-1.png]]
NOTE:  "har den en entydig stationærfordeling" betyder at den ALTID har en stationærfordeling


***Metode til at udregne Stationær/Grænse fordeling***
Helt formelt skal man for at finde **grænse/stationær** fordeling gøre således:
![[Stationary Distribution.png]]
HUSK:   At vise den er **irreducibel** og **aperiodisk**, da dette er krævet for at kunne gøre ovenstående.

***Irreducibel and Aperiodic Markov Chains features***
Her er nogle vigtige/gode ting at vide om vores MK hvis den er **Irreducibel** og **Aperiodic**
![[Irreducible and Aperiodic.png]]

#### ***Finite Markov Chains***
#finiteMarkovChains #endeligeMarkovkæder
Defination (side 653):
![[Endelige Markov kæder 1.png]]![[Endelige Markov kæder 2.png]]
#### ***Countable Infinite Markov Chains***
#countableInfiniteMK #positivRecurrent #nullRecurrent
Når en Markov kæde er har et antal tællelige states, men også er uendelig kan den endten være **positiv recurrent** eller **null recurrent** (side 655)
![[Positive recurrent and null recurrent.png]]

Betragt en uendelig Markov kæde $(X_{n}, n = 0, 1, 2, \dots )$. Antag, at kæden er **irreducibel** og **aperiodisk**. Da gælder det, at en af følgende cases kan opstå:
![[Possible States.png]]
UDREGNING VIA THEOREM
For at bruge ovenstående theorem findes først den staionære fordeling $\pi$ ved at solve følgende ligning
 ![[Example infinite.png]]
Hvis ovenstående ligning har en unik løsning kan det konkluderes at kæden er **positive recurrent** og at stationærfordelingen er grænsefordelingen for kæden. 
Hvis der ikke eksisterer en stationærfordelingsløsning er vores kæde enten **transient** eller **null recurrent**. 


#### Opgave Eksempler
Her antages det at man har en **transition matrice**

Her bruges matricen $P = \begin{bmatrix} 0 & 0.5 & 0.5 \\ 0.1 & 0 & 0.9 \\ 0.8 & 0.2 & 0 \end{bmatrix}$
##### Find $X_0$ givet $X_2$  (find en tidligere sandsynlighed) (Baye's rule)

Vi har fået givet at $P(X_{0}= 1) = \frac{1}{3}, P(X_{0} = 2) = \frac{1}{3} \land P(X_{0} = 3) = \frac{1}{3} )$

Vi bruger nu Baye's rule:
$P(X_{0}= k \mid X_2 = 2) = \frac{P(X_{2}= 2 \mid X_{0}= k) P(X_{0}= k)}{P(X_{2}= 2)} \quad \Rightarrow \quad \frac{P^{(2)}_{k2} \cdot \frac{1}{3}}{P(X_{2}= 2)}$

For at udregne $P(X_{2}= 2)$ bruger vi nu trylleformlen med $n = 2$:  $\pi^{(2)} = \pi^{(0)} \cdot P^2$

$\pi^{(2)} = \begin{bmatrix} \frac{1}{3} & \frac{1}{3} & \frac{1}{3} \end{bmatrix} \cdot \begin{bmatrix} 0 & 0.5 & 0.5 \\ 0.1 & 0 & 0.9 \\ 0.8 & 0.2 & 0 \end{bmatrix}^{2}$

$P^{2}$ udregnes til $\begin{bmatrix} 0.45 & 0.1 & 0.45 \\ 0.72 & 0.23 & 0.05 \\ 0.02 & 0.4 & 0.58 \end{bmatrix}$  (ved ikke om dette step er nødvendigt at skrive med)

Derved får vi $\pi^{(2)}= \begin{bmatrix} 0.40 & 0.24 & 0.36 \end{bmatrix}$

Her vælger vi 0.24 da $X_{2}= 2$, og vi får derved $\frac{P^{(2)}_{k2} \cdot \frac{1}{3}}{0.24}$

Vi regner nu dette for henholdsvis $X_{0}= 1, X_{0}= 2 \land X_{0}= 3$

$\frac{P^{(2)}_{12} \cdot \frac{1}{3}}{0.24} = 0.14 \qquad \frac{P^{(2)}_{22} \cdot \frac{1}{3}}{0.24} = 0.32 \qquad \frac{P^{(2)}_{32} \cdot \frac{1}{3}}{0.24} = 0.56$

og vi får derved $\begin{bmatrix} 0.14 & 0.32 & 0.56 \end{bmatrix}$

##### Udregn Grænseværdien
Vi starter med at bruge formlen $\pi \cdot P = \pi$ 

hvilket udregnes

$\begin{bmatrix} \pi_{1} & \pi_{2} & \pi_{3} \end{bmatrix} \cdot \begin{bmatrix} 0 & 0.5 & 0.5 \\ 0.1 & 0 & 0.9 \\ 0.8 & 0.2 & 0 \end{bmatrix} = \begin{bmatrix} \pi_{1} & \pi_{2} & \pi_{3} \end{bmatrix}$

Dette giver os ligningsystemet:

$0 \cdot \pi_{1} + 0.1 \cdot \pi_{2}+ 0.8 \cdot \pi_{3} = \pi_1$
$0.5 \cdot \pi_{1} + 0 \cdot \pi_{2}+ 0.2 \cdot \pi_{3} = \pi_2$
$0.5 \cdot \pi_{1} + 0.9 \cdot \pi_{2}+ 0 \cdot \pi_{3} = \pi_3$
$\pi_{1} + \pi_{2}+\pi_{3} = 1$

Sidste ligning skrives med da det samlet set skal være lig med 1 (pga grænseværdi tror jeg)

Dette udregnes via CAS værktøj, og vi får $\begin{bmatrix} 0.35 & 0.25 & 0.40 \end{bmatrix}$
##### Find $X_{3}= 1$ givet $X_{0}= 3$

Vi bruger trylleformlen med $n = 3$ (side 634)

$\pi^{(3)}= \pi^{(0)} \cdot P^3$
$\Downarrow$
$\pi^{(3)} = \begin{bmatrix} 0 & 0 & 1 \end{bmatrix} \cdot \begin{bmatrix} 0 & 0.5 & 0.5 \\ 0.1 & 0 & 0.9 \\ 0.8 & 0.2 & 0 \end{bmatrix}^{3}$
$\Downarrow$
$\begin{bmatrix} 0.3700 & 0.3150 & 0.3150 \end{bmatrix}$

Her vælger vi det første tal, da vi er interesserede i $X_{3}= 1$. 

Dermed har vi svaret $0.37$

NOTE: Her ændre positionen på 1-tallet i den første matrice sig alt efter hvad state $X_0$ er i
##### Find $X_{2}= 1$ givet $X_{1}= 3$

Her bruges formlen $P_{ij} = P(X_{m+1}= j \mid X_{m}= i)$

I vores tilfælde $P(X_{2}= 1 \mid X_{1}= 3) = P_{32}$

Så vi ender med at få sandsynligheden $0.2$.  
##### Ting angående Termerne for klasser/states/relationer 

Tegn state transition diagramet og forklar ud fra det. 


#### MatLab kode

##### Kode til trylleformlen
% pi = transition matrix, pi0 = matrix for pi_0, n = power raised to
pi = [0, 0.5, 0.5; 0.1, 0, 0.9; 0.8, 0.2, 0];
pi0 = [1, 0, 0];
n = 3;

% Udregner matricen ganget med sig selv n gange, og resultatet
piPower = pi^n;
pin = pi0 * piPower;

% Printer matricen ganget med sig selv n gange og resultatet
disp(piPower)
disp(pin);



# Integrals Examples
![[Integral Regeneregler.png]]
#### Partial Integration
Formlen for Partial Integration:
$$\int^{b}_{a}f(x)g'(x) dx = [f(x)g(x)]^{b}_{a} - \int^{b}_{a} f'(x)g(x) dx$$

Vi har funktionen $x \cdot sin(x)$ med boundaries $0$ and $\frac{\pi}{2}$.

Først skal vi definere et $f(x)$ og et $g'(x)$. Vi vælger dem til $f(x) = x \quad \land \quad g'(x) = sin(x)$.

$$\int^{\frac{\pi}{2}}_{0}x \cdot sin(x) dx = [x \cdot (-cos(x))]^{\frac{\pi}{2}}_{2} - \int^{\frac{\pi}{2}}_{0} 1 \cdot (-cos(x)) dx$$
$$\Downarrow$$
$$\left[x \cdot (-cos(x))\right]^{\frac{\pi}{2}}_{2} - \left(1 \cdot \int^{\frac{\pi}{2}}_{0} (-cos(x)) dx\right)$$

Da vi ikke længere har et produkt i vores integral kan vi nu indsætte vores boundaries:

For vores upper bound $\frac{\pi}{2}$: 
$$\frac{\pi}{2} \cdot (-cos(\frac{\pi}{2})) - 1 \cdot (-cos(\frac{\pi}{2}))$$
$$\Downarrow$$
$$\frac{\pi}{2} \cdot 0 - 1 \cdot 0$$
$$\Downarrow$$
$$0 - 0$$
$$\Downarrow$$
$$0$$

For vores lower bound $0$:
$$0 \cdot (-cos(0)) - 1 \cdot (-cos(0))$$
$$\Downarrow$$
$$(0 \cdot (-1)) -  (1 \cdot (-1))$$
$$\Downarrow$$
$$0 - (-1)$$
$$\Downarrow$$
$$-1$$

Til sidst trækkes upper bound fra lower bound
$$0 - (-1)$$
$$\Downarrow$$
$$1$$

#### Dobbel Integration med variabel som begrænsning
$\begin{align*} E[x,y] &= \int^{1}_{0} \int^{1}_{y} xy \cdot 2(x+y) dxdy \\ &= \int^{1}_{0} \int^{1}_{y} 2x^{2y}+ 2xy^{2} dxdy \\ &= \int^{1}_{0} \left[\frac{2}{3}x^{3}y+x^{2}y^{2}\right]^{1}_{y} dy \\ &= \int^{1}_{0} \frac{2}{3}+y^{2}-\frac{2}{3}y^{4}-y^{4} dy \\ &= \left[\frac{1}{3}y^{2}+\frac{1}{3}y^{3}-\frac{2}{15}y^{5}-\frac{1}{5}y^{5}\right]^{1}_{0} \\ &= \frac{1}{3} \end{align*}$

