yValues = c(8.1,8.8,9.7,7.4,9.2,9.3,8.8,9.6,9.7,9.5,10.5,11.1)
ybar = sum(yValues)/length(yValues)

xValues = c(1890,1900,1911,1922,1930,1943,1966,1967,1983,1998,2000,2019)
xBar = sum(xValues)/length(xValues)

sxx = sum((xValues-xBar)^2)
sxy = sum((xValues-xBar)*(yValues-ybar))

b1 = sxy/sxx
b0 = ybar - (b1*xBar)

cat(b1)
cat(b0)
