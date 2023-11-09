[[8.3 Interval estimation (Confidence Intervals)]]

![[8_10_overviewCIs.pdf]]
![[Definition of Pivotal quantity.png]]
Q er en pivot hvis den opfylder 2 ting:
1) $Q = h(X_{1},\cdots X_{n}, \theta)$ må ikke afhænge af andre ukendte parameter.
2)  Q's fordeling er ufhængig af $\theta$ .
___
Det antages nu at $\sigma²$ er ukendt 
1) Først finder vi Q
$Q=\frac{\bar X  - \theta}{S \sqrt{n}}$
Derved bliver confidensintervallet:
$$
[\bar X  -  z_{\frac{\alpha}{2}}, \bar X   +   z_{\frac{\alpha}{2}}]
$$

Første problem er fordeling af $S²$ 
$$
S² = \frac{n - 1}{\sigma²}(\frac{1}{n - 1} \sum_{i=1}^{n} X_{i} - \bar X)
$$
I stedet kan man skrive:
$$
\sum_{i=1}^{n}\left(\frac{X_{i} - \mu}{\sigma}\right)²\sim N(0,1)
$$

![[definition 8.1 The Chi-squared distribution.png]]
Vi har her at hver $z_{i} = \frac{X_{i} - \mu}{\sigma}$
Det vil altså sige at vi laver summen mellem stokastiske variabler. Dette er definationen for $\chi^{2}(n)$ . n er frihedgrader(degrees of freedom).
```R
qchisq(alpha,n)
```
![[Theorem 8.3.png]]

![[Theorem 8.4.png]]

I og med at T afhænger af antal observationer, er Q ikke afhængig af $\theta$ og er dermed en pivot.
___



