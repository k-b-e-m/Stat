##############################################################
#
# Dette er R-script er til simpel linear regression, basserede på den første metode nævnt i bogen
# ligeså snart du har lavet din liste af tupler via createTupleList funktionen, så kan du udregne alle de nødvendige værdier
# via deres funktioner som er kreeret under.
# 
# Når du indskriver dine værdier er det vigtigt at de står således som parametre:
# createTupleList(x1,y1,x2,y2,x3,y3) osv.
#
# alle formler kommer fra afsnit 8.5.2 i bogen.
#############################################################

#################################################################
##funktion til at kreere ens liste af tupler
createTupleList <- function(...) {
  tupleList <- list()
  lstx <- list()
  lsty <- list()
  i = 1
  for(x in list(...)) {
    if(i %% 2 == 1) {
      lstx <- append(lstx,x)
    } else {
      lsty <- append(lsty,x)
    }
    i = i + 1
  }
  i = 1
  for (x in 1:(length(lstx))) {
    vec = c(lstx[[i]],lsty[[i]])
    tupleList <- append(tupleList, list(vec))
    i = i + 1
  }
  
  return(tupleList)
}
################################################
## funktioner til at udregne xbar og ybar
calculate_xbar <- function(tupleList) {
  sum = Reduce("+", tupleList)[1]
  return((sum / length(tupleList)))
}

calculate_ybar <- function(tupleList) {
  sum = Reduce("+", tupleList)[2]
  return((sum / length(tupleList)))
}



## funktioner til at udregner sxx og sxy
calculate_sxx <- function(tupleList) {
  sxx = 0
  for(x in tupleList) {
    sxx = (sxx + (x[1] - calculate_xbar(tupleList))^2)
  }
  return(sxx)
}

calculate_sxy <- function(tupleList) {
  sxy = 0
  for(x in tupleList) {
    sxy = (sxy + ((x[1] - calculate_xbar(tupleList))*(x[2] - calculate_ybar(tupleList))))
  }
  return(sxy)
} 


##funktioner til at udregne hatB1 og hatB2
calculate_hatB1 <- function(tupleList) {
  return(calculate_sxy(tupleList) / calculate_sxx(tupleList))
}

calculate_hatB0 <- function(tupleList) {
  ybar = calculate_ybar(tupleList)
  hatB1 = calculate_hatB1(tupleList)
  xbar = calculate_xbar(tupleList)
  return(ybar-(hatB1*xbar))
}


## funktion til at udregne fitted yi værdier
calculate_fitted_yi_values <- function(tupleList) {
  list1 <- list()
  for(x in tupleList) {
    list1 <- append(list1,calculate_hatB0(tupleList) + calculate_hatB1(tupleList)*x[1])
  }
  return(list1)
}



## funktion til at udregne residuals

calculate_residuals <- function(tupleList) {
  list1 <- list()
  fittedyivalues <- calculate_fitted_yi_values(tupleList)
  
  for(i in 1:length(tupleList)) {
    ting = tupleList[[i]][2] - fittedyivalues[[i]][1]
    list1 <- append(list1, ting)
  }
  return(list1)
}


################################################################
##funktion til at plotte punkter og tilføje regressionslinje
plotFromTuple <- function(tupleList) {
  lstx <- list()
  lsty <- list()
  for(x in tupleList) {
    lstx <- append(lstx,x[1])
    lsty <- append(lsty,x[2])
  }
  
  plot(lstx,lsty)
  abline(calculate_hatB0(tupleList),calculate_hatB1(tupleList),col='red')
}

###############################################################

## funktion til at udregne syy

calculate_syy <- function(tupleList) {
  syy = 0
  for(y in tupleList) {
    syy = (syy + (y[2] - calculate_ybar(tupleList))^2)
  }
  return(syy)
}

## funktion til at udregne R^2-værdien

calculate_rsquared <- function() {
  rsquared = (calculate_sxy(tupleList)^2)/(calculate_sxx(tupleList)*calculate_syy(tupleList))
  return(rsquared)
}



##så propper vi vores tupel værdier ind.
tupleList <- createTupleList(-5,-2,-3,1,0,4,2,6,1,3)
## Alle formler kommer fra afsnit 8.5.2 i bogen
xbar <- calculate_xbar(tupleList)
ybar <- calculate_ybar(tupleList)
sxx <- calculate_sxx(tupleList)
sxy <- calculate_sxy(tupleList)
hatB1 <- calculate_hatB1(tupleList)
hatB0 <- calculate_hatB0(tupleList)
hatyi <- calculate_fitted_yi_values(tupleList)
ei <- calculate_residuals(tupleList)
plotFromTuple(tupleList) ##kig i nedre højre hjørne af RStudio for plottet.
syy <- calculate_syy(tupleList)
rsquared <- calculate_rsquared()

print(paste("value of xbar: ", xbar))
print(paste("value of ybar: ", ybar))
print(paste("value of sxx: ", sxx))
print(paste("value of sxy: ", sxy))
print(paste("value of hatB1: ", hatB1))
print(paste("value of hatB0: ", hatB0))
i = 1
for(y in hatyi) {
  print(paste(paste(paste("value of haty",i),": "), y))  
  i = i + 1
}

i = 1
for(e in ei) {
  print(paste(paste(paste("value of e",i),": "), e))  
  i = i + 1
}
print(paste("value of syy: ", syy))
print(paste("value of r squared: ", rsquared))