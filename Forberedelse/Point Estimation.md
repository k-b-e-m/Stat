## Random Sample
### Properties
![[Random Sample Properties.png]]
Side 425

## Sample Mean
![[Properties of sample mean.png]]
Side 426.

## Order statistics
![[Theorem 8.1.png]]
Side 427
## Point Estimation
### Criteria for estimators
![[Bias of a point.png]]
Side 429
![[Unbiased of estimator.png]]
Side 429
![[Mean squared error.png]]
Side 430
![[MSE = VAR + B.png]]
Side 431
Example 8.3 side 430 giver os
$$
MSE(\hat\Theta_{1})>MSE(\hat\Theta_{2})
$$
hvor n>1

![[Consisten estimator.png]]
Side 431
![[Theorem 8.2.png]]
Side 432



### MSE($\hat\Theta_n$ ) når $\hat\Theta_{n} = \bar X$ 
Her har vi fra example 8.4 på side 431 at
$$
MSE(\hat\Theta_{n}) = \frac{\sigma^{2}}{{n}}
$$
Denne fortæller os også at i dette tilfælde er $\hat\Theta_{n}= \bar X$ En consistent estimator.

### Sample Variance ($S^2$) and sample standard deviation (S)
![[Sample Variance and Sample Standard deviation.png]]
Brug her helst den første af de to måder at regne s^2 på, da den er nemmere.
Desuden kan dette gøres i R:
```R
x = c(10,12,8)
var(x)
sd(x)
```
Hvor X er data Var er sample mean og sd er sample standard deviation.
I MatLab kan man bruge:
```MatLab
x = [10,12,8]
mean(x)
var(x)
std(x)
```
Til at få sample mean, sample variance og sample standard deviation.




## Maximum Likelihood Estimators
### MLE
![[The maximim likelihood estimator (MLE).png]]
Side 440
### Example 8.10  MLE for (Binomial(m,$\theta$) og Exponential($\theta$))
![[Example 8.10.png]]

### Example 8.11 MLE for N($\theta_1$,$\theta_{2}$ )
![[Example 8.11.png]]

### Solved Problems side 447 4 MLE for Geometric($\theta$)
![[Solved problem 4.png]]

### Solved Problems side 448 5 MLE for Uniform(0,$\theta$)
![[Pasted image 20231216125229.png]]

### Asymptotic Properties of MLE
Gælder når sampleSize er stor
![[asymptotic properties of MLEs.png]]
Side 443

### Example 8.7 side 435 giver her et godt eksempel på MLE
![[Example 8.7.png]]
### Likelihood function
![[Likelihood function.png]]
Side 437



## Interval Estimation
### Definition
![[Definition of Interval Estimation.png]]
side 449

### Pivot
#### Definition
![[Definition of Pivotal quantity.png]]
Side 453


### Known Intervals
#### Assumptions: Known $\sigma$ and n is large . Estimating: E$X_{i}$![[Interval 1.png]]
Side 455


#### Assumptions: Bernoulli($\theta$), n is large. Estimating: \theta
![[Interval 2.png]]
Side 458
Alternativt
![[Interval 3.png]]
Side 459
#### Assumptions: Unknown variance, n is large. Estimating: $EX_{i}$ 
![[Interval 4-1.png]]
Side 460
#### Assumptions: Normal Distribution, $\sigma$ is known. Estimating: $\mu$ = $EX_{i}$ 
![[Interval 5.png]]
Side 466
#### Assumptions: Normal Distribution, unknown $\mu$ and $\sigma$. Estimating $\mu$ = $EX_{i}$ 
![[Interval 6.png]]
Side 467
#### Assumptions: Normal Distribution, Unknown $\mu$ and $\sigma$. Estimating: Var($X_{i}$)=$\sigma^{2}$ 
![[Interval 6-1.png]]
side 469



### Example 8.18 of finding an n for a given estimator
![[Example 8.18.png]]
Side 458
