A = matrix(c(0.3-1,0,0.8,
             0.3,0.4-1,0.2,
             1,1,1),3,3,TRUE)

b = matrix(c(0,0,1),3,1,TRUE)
print(A)
print(b)
pi = solve(A,b)
