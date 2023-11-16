values = c(1.78 , 1.82 , 1.81 , 1.78 , 1.81 , 1.79 , 1.77 , 1.73  , 1.80  ,  1.88  ,  1.83  ,  1.67  ,  1.71 ,  1.83  ,  1.90  ,  1.84)
Xbar = mean(values)
S2 = var(values)
S = sqrt(S2)
mu0 = 1.84
W = (Xbar - mu0)/(S/sqrt(length(values)))
alpha = 0.01
tfunc = qt(1-(alpha/2),length(values)-1)
accepted = abs(W)<=tfunc