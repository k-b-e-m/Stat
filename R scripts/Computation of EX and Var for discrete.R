install.packages("Ryacas")
library(Ryacas)

yac_str("Integrate(x) (1/4)*x")

g = -qnorm(1-0.05)
2*(1-qt(0.33,224))