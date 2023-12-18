
###############################################
###    Stationary distribution, page 653    ###
###############################################

#For a two state markov chain

b = numeric(2)
b[2] = 1

P = matrix(c(0.2,0.8,0.3,0.7), nrow = 2, byrow = TRUE)
P

A = t(P)
A = A - diag(2)
A[2,] = 1

p = solve(A,b)

p%*%P
p


#For a three state markov chain

b = numeric(3)
b[3] = 1

P = matrix(c(0,0.5,0.5,0.1,0,0.9,0.8,0.2,0), nrow = 3, byrow = TRUE)
P

A = t(P)
A = A - diag(3)
A[3,] = 1

p = solve(A,b)

p%*%P
p



#n (2) step transition matrix
P = matrix(c(0,0.5,0.5,0.1,0,0.9,0.8,0.2,0), nrow = 3, byrow = TRUE)
P2 = P%^%2
P2

p  = matrix(c(1/3,1/3,1/3), nrow = 1, byrow = TRUE)
p
p%*%P2

