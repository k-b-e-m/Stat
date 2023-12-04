A = matrix(c(1-0.6-1, 1-0.6,1-0.6
            ,0.6,0-1,0,
             1,1,1),3,3,TRUE)
b = matrix(c(0,0,1),3,1,TRUE)
print(A)
print(b)
pi = solve(A,b)


