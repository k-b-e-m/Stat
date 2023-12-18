
#Punkt 1 - page 455
confidence1 <- function(n, x_bar, var, alpha) {
  z = qnorm(1-alpha/2)
  sd = sqrt(var)
  lower = x_bar - z*(sd/sqrt(n))
  upper = x_bar + z*(sd/sqrt(n))
  
  final_result = c(lower, upper, sd, z)
  
  print(final_result)
}

confidence1(100,50.1,81,0.05)


#Punkt 2 - page 459
confidence1 <- function(n, x_bar, alpha) {
  z = qnorm(1-alpha/2)
  root = sqrt((x_bar*(1-x_bar))/n)
  lower = x_bar - z*root
  upper = x_bar + z*root
  
  final_result = c(lower, upper, root, z)
  
  print(final_result)
}




#Punkt 3 - page 460
confidence3 <- function(n, x_bar, s_var, alpha) {
  z = qnorm(1-alpha/2)
  s_sd = sqrt(s_var)
  lower = x_bar - z*(s_sd/sqrt(n))
  upper = x_bar + z*(s_sd/sqrt(n))
  
  final_result = c(lower, upper, s_sd, z)
  
  print(final_result)
}

confidence3(100,110.5,45.6,0.05)



#Punkt 4 - page 466 (Is actually equal to "Punkt 1")
confidence4 <- function(n, x_bar, var, alpha) {
  z = qnorm(1-alpha/2)
  sd = sqrt(var)
  lower = x_bar - z*(sd/sqrt(n))
  upper = x_bar + z*(sd/sqrt(n))
  
  final_result = c(lower, upper, sd, z)
  
  print(final_result)
}

confidence4(9, 16.953, 1, 0.1)


#Punkt 5 - page 467
confidence5 <- function(n, x_bar, s_var, alpha) {
  t = qt(1-alpha/2,n-1)
  s_sd = sqrt(s_var)
  lower = x_bar - t*(s_sd/sqrt(n))
  upper = x_bar + t*(s_sd/sqrt(n))
  
  final_result = c(lower, upper, s_sd, t)
  
  print(final_result)
}

confidence5(7,3.91,0.674^2,0.05)

#Punkt 6 - page 455
confidence6 <- function(n, s_var, alpha) {
  c1 = qchisq(1-alpha/2,n-1)
  c2 = qchisq(1-(1-alpha/2),n-1)
  lower = ((n-1)*s_var) / c1
  upper = ((n-1)*s_var) / c2
  
  final_result = c(lower, upper, c1, c2)
  
  print(final_result)
}

confidence6(36,12.5,0.1)
confidence6(36,12.5,0.05)
confidence6(36,12.5,0.01)
