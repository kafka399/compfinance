options(digits=4)
library(mvtnorm)

#
# bivariate normal distribution
#

mu.x = 0.05
sig.x = 0.1
mu.y = 0.025
sig.y = 0.05

#1
rho.xy = 0
sig.xy = rho.xy*sig.x*sig.y
Sigma.xy = matrix(c(sig.x^2, sig.xy, sig.xy, sig.y^2), 2, 2, byrow=TRUE)


n = 100
set.seed(123)
xy.vals = rmvnorm(n, mean=c(mu.x, mu.y), sigma=Sigma.xy) 
head(xy.vals)



# scatterplot
plot(xy.vals[,1], xy.vals[,2], pch=16, cex=2, col="blue", 
     xlab="x", ylab="y")
title("Bivariate normal: rho=0")
abline(h=mu.y, v=mu.x)
segments(x0=0, y0=min(xy.vals[,2]), x1=0, y1=0, col="red")
segments(x0=min(xy.vals[,1]), y0=0, x1=0, y1=0, col="red")


#2
rho.xy = -.9
sig.xy = rho.xy*sig.x*sig.y
Sigma.xy = matrix(c(sig.x^2, sig.xy, sig.xy, sig.y^2), 2, 2, byrow=TRUE)


n = 100
set.seed(123)
xy.vals = rmvnorm(n, mean=c(mu.x, mu.y), sigma=Sigma.xy) 
head(xy.vals)



# scatterplot
plot(xy.vals[,1], xy.vals[,2], pch=16, cex=2, col="blue", 
     xlab="x", ylab="y")
title("Bivariate normal: rho=0")
abline(h=mu.y, v=mu.x)
segments(x0=0, y0=min(xy.vals[,2]), x1=0, y1=0, col="red")
segments(x0=min(xy.vals[,1]), y0=0, x1=0, y1=0, col="red")

#3
rho.xy = .9
sig.xy = rho.xy*sig.x*sig.y
Sigma.xy = matrix(c(sig.x^2, sig.xy, sig.xy, sig.y^2), 2, 2, byrow=TRUE)


n = 100
set.seed(123)
xy.vals = rmvnorm(n, mean=c(mu.x, mu.y), sigma=Sigma.xy) 
pmvnorm(lower=c(-Inf, -Inf), upper=c(0, 0), mean=c(mu.x, mu.y), sigma=Sigma.xy)

#4
rho.xy = 0
sig.xy = rho.xy*sig.x*sig.y
Sigma.xy = matrix(c(sig.x^2, sig.xy, sig.xy, sig.y^2), 2, 2, byrow=TRUE)


n = 100
set.seed(123)
xy.vals = rmvnorm(n, mean=c(mu.x, mu.y), sigma=Sigma.xy) 
pmvnorm(lower=c(-Inf, -Inf), upper=c(0, 0), mean=c(mu.x, mu.y), sigma=Sigma.xy)

#3
rho.xy = -.9
sig.xy = rho.xy*sig.x*sig.y
Sigma.xy = matrix(c(sig.x^2, sig.xy, sig.xy, sig.y^2), 2, 2, byrow=TRUE)


n = 100
set.seed(123)
xy.vals = rmvnorm(n, mean=c(mu.x, mu.y), sigma=Sigma.xy) 
pmvnorm(lower=c(-Inf, -Inf), upper=c(0, 0), mean=c(mu.x, mu.y), sigma=Sigma.xy)
