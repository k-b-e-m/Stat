#lecture

###  Forlæsning 1 - bayes rule and conditional independence

#Example 
Eksempel 1.21
![[Example 1.21.png]]

$P(x=5) = P(TTTTH)$
Fordi kast er uafhængige (antagelse) kan vi få:
$\frac{P(T_1)...P(T_4)}{4}$
Fordi vi ved at terningerne er uafhængige ved vi at vi kan bruge [[Conditional probability of P(A B).png]]
![[Conditional probability of P(A B).png]]
På grund af lemma 1.1 ((Bevis for lemma 1.1[[proof of lemma 1.1]]))  ![[Lemma 1.1.png]] 
Kan vi bruge complimenterne ligeså. 
$A_1,A_2...A_j,A_{j+1}...A_K,A_{K+1}...A_n$
Her kan vi dele dem op i tre intervaller:
$B_{1}= A_1...A_j$
$B_2=A_{j+1}...A_k$
$B_{3}= A_{k+1}...A_n$
Eftersom vi ved at $B_1$ ikke indgår i $B_2$ ved vi at:
$$
B_{1}= A_{1}, B_{2}= A_{2}^{c}
$$
er ufahængige udfra sætning a. derved har vi at:
$A_1,A_2...A_n$ er uafhængige
$P(A_{1\cup}A_{2}... \cup A_n)$ $= 1-P((A_{1\cup}... \cup A_n)^c)$
Ved brug af de morgans [[Theorem 1.1-MorgansLaw.png]] 
						  $= 1-P(A_{1}^{c}\cap...\cap A_n^c)$
Sætning a giver os dermed:
$$
B_{1} = A_{1}^{c},B_2=A_{2}^{c}...B_n=A_{n}^{c}
$$


#Example 
Eksempel 1.22 - variant
et trådløst netværk sender en følge af bits. Denne overførsel er aldrih perfekt og et bit bliver overført forkert med en meget lille sandsynlighed $p=\frac{1}{100000}$. Vi antager at gejlene optrøder uafængigt af hindanden.
Der sendes i grupper "packages" af 1024 bits ad gangen. Et package er ubrugeligt hvis mindst en bit er forkert. Beregn "package error rate".
B = package har mindst en fejl
$P(B)=P(A_{1}\cup A_{2}... A_{1024})$
		$= 1- ( (1-P(A_{1}))...(1-P(A_{1024} )))$
		= $1-(\frac{99999}{100000})\approx 0.01$

#mentiSpørgsmål #independence 
_Menti_
Spørgsmål Vi kaster en terning er A=2 og B=6 uafhængige med et terning kast
svar: nej
bevis: $P(A\cap B) = P(A)P(B)$
		$0 = \frac{1}{6} \cdot \frac{1}{6}$
		Derved overholder de ikke [[Definition for independence between 2 events.png]]

Spørgsmål 2
Spørgsmål: B=S. er A og S uafhængige?
svar: ja
bevis: $P(A\cap B) = P(A)P(B)$
Når A$\subset$B så er A$\cap B = A$
Derved har vi: $P(A)=P(A\cdot 1 )$

Spørgsmål 3
Spørgsmål:  Lad B=A. Er A uafhængig?
Svar:  Ved ikke
Bevis: A er afhængig af sige selv når P(A) er 1 eller 0
$1 = 1\cdot 1$ eller $0 = 0\cdot 0$
Kan også være afhængig, eksempel:
$0.5 = 0.5\cdot 0.5 \Leftrightarrow 0.5\neq 0.5 \cdot 0.5$
_Menti Slut_

#partition
![[partition]]
Alle 


#example #independence #lawOfTotalProbability
Eksempel 1.27
[[Law Of Total Probability.png]]
$B_{1}... B_{n}$ partition af S så er: 
$P(A) = P(A|B_1)P(B_n)P(B_{2)}+ P(A|B_n)P(B_{n}) = \Sigma _{K=1}^{K} P(A|B_{k})P(B_K)$
																			$= \Sigma _{k=1}^{k}\frac{P(A\cap B_{k})}{P(B_{k}}$
																			

Eksempel 1.24
![[example1.24.png]]
Når vi først vælger en sæk har vi 3 muligheder, sæk 1,2 eller 3.
Sækkene deler en partition fordi du kun kan vælge en sæk og de dækker alle muligheder af sække.
R= vi trækker en rød
				$P(B_{1)}= \frac{1}{6}$
				$P(B_{1)}= \frac{1}{3}$
				$P(B_{1)}= \frac{1}{2}$
				$P(R|B_{1)}= \frac{4}{5}$
				$P(R|B_{1)}= \frac{1}{5}$
				$P(R|B_{1)}= \frac{2}{5}$
	$P(R)=P(R|B_{1})P(B_{1}) + P(R|B_{2})P(B_{2}) + P(R|B_{3})P(B_{3})$ = $\frac{4}{5}\frac{1}{6}+\frac{1}{5}\frac{1}{3}+\frac{2}{5}\frac{1}{2}= 0.4$

Bayes Rule [[Bayes rule.png]] [[BayesRuleProof]]
$P(B_{1|R)}= \frac{P(R|B_1)P(B_1)}{P(R)}=\frac{\frac{4}{5}\frac{1}{6}}{\frac{2}{5}} = \frac{1}{3}$


#Example 
Eksempel 1.26
![[eksempel 1.26.png]]
T = testet positiv
D = Syg/disease
$P(D) = \frac{1}{10000}$
$P(D^{c}) = \frac{9999}{10000}$ 
$P(T|D^{c})=0.02$
$P(T^c|D)=0.01$
$P(T|D)=1-P(T^c|D)=0.99$
Vi vil gerne find $P(D|T)$ Her bruger vi [[Bayes rule.png]].
$P(D|T) = \frac{P(T|D)P(D)}{P(T)}$
$P(T) = P(T|D)P(D)+P(T|D^c)P(D^c)$ [[Law Of Total Probability.png]]
$P(D|T) = \frac{0.99 \cdot \frac{1}{10000}}{\frac{99}{100}\cdot \frac{1}{10000} + \frac{2}{100}\cdot \frac{9999}{10000}} = 0.049$ 


