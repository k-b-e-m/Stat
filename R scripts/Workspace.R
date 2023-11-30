A = matrix(c(0.5-1,0.4,0.1,0.2,0.5-1,0.3,1,1,1),3,3,TRUE)
b = matrix(c(0,0,1),3,1,TRUE)
print(A)
print(b)
solve(A,b)

A

# find pi
pi=solve(A,b)
pi
# gør prøve
P=matrix(c(0.5,0.4,0.1,
           0.2,0.5 ,0.3,
           0.1,0.3,0.6),nrow=3,byrow=TRUE)
t(pi) %*% (P%^%1150)
pi

P%^%100000 == P%^%100001
P%^%100000000


solve(1,0.6+0.4*(0.6))

P = matrix(c(0,0.5,0.5
            ,1/3,0,2/3,
            1/2,1/2,0  ),3,3,TRUE)
P
P%^%1000000
P%^%1000010


