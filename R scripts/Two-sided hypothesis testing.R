

#########################################################
### Two-sided hypothesis testing, table 8.2, page 485 ###
#########################################################


#Case 1: X_i's normally distributed and sd known#
acceptance1 <- function(dataset, mu0, n, sd, alpha) 
{
  sampleMean = mean(dataset)
  W = (sampleMean-mu0)/(sd/(sqrt(n)))
  zAlpha = qnorm(1-(alpha/2))
  absW = abs(W)
  
  if(absW <= zAlpha) {
    result = "accept"
  } else {
    result = "deny"
  }
  
  finalResult = c(sampleMean, W, zAlpha, result)
  
  print(finalResult)
}




#Case 2: n large, X_i non normal#
acceptance2 <- function(dataset, mu0, n, alpha) 
{
  sampleMean = mean(dataset)
  sampleSd = sd(dataset)
  W = (sampleMean-mu0)/(sampleSd/(sqrt(n)))
  zAlpha = qnorm(1-(alpha/2))
  absW = abs(W)
  
  if(absW <= zAlpha) {
    result = "accept"
  } else {
    result = "deny"
  }
  
  finalResult = c(sampleMean, sampleSd, W, zAlpha, result)
  
  return(finalResult)
}




#Case 3: X_i's normally distributed and sd unknown, n small#
acceptance3 <- function(dataset, mu0, n, alpha) 
{
  sampleMean = mean(dataset)
  sampleSd = sd(dataset)
  W = (sampleMean-mu0)/(sampleSd/(sqrt(n)))
  tAlpha = qt(1-(alpha/2), n-1)
  absW = abs(W)
  
  if(absW <= tAlpha) {
    result = "accept"
  } else {
    result = "deny"
  }
  
  finalResult = c(sampleMean, sampleSd, W, tAlpha, result)
  
  return(finalResult)
}

dataset = c(3.93,3.41,3.08,4.72,3.37,4.03,4.82)
size = length(dataset)


acceptance3(dataset, 4, size ,0.05)
