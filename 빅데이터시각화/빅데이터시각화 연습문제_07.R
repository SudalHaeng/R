# 1번
x <- y <- seq(-4*pi, 4*pi, len=27)
r <- sqrt(outer(x^2, y^2, "+"))
opar <- par(mfrow=c(2, 2), mar=rep(0, 4))
for(f in pi^(0:3)) contour(cos(r^2)*exp(-r/f),
                           drawlabels=FALSE, axes=TRUE, frame=TRUE)
for(f in pi^(0:3)) contour(cos(r^2)*exp(-r/f),
                           drawlabels=FALSE, axes=FALSE, frame=FALSE)


outer(x^2, y^2, "+")
pi^(0:3)


# 2번
library(mvtnorm)
x <- y <- sort(rnorm(100,0,1))
mu_x <- mu_y <- 0
sd_x <- sd_y <- 1
rho <- 0.3
mu <- c(mu_x, mu_y)
sigma <- matrix(c(sd_x^2, rho*sd_x*sd_y,
                  rho*sd_x*sd_y, sd_y^2),
                nrow=2,byrow=TRUE)
z = matrix(NA, 100, 100)
for(i in 1:100){
  for(j in 1:100){
    z[i,j] <- dmvnorm(c(x[i],y[j]), mean=mu,sigma=sigma)
  }
}
contour(x, y, z, drawlabels = FALSE,
        main="Bivariate Normal distribution \n rho=0.3",
        xlim=c(-3,3),ylim=c(-3,3))


# 3번
#install.packages("scatterplot3d")
data(mtcars)
library(scatterplot3d)
c(min(mtcars$disp), max(mtcars$disp))  # 71.1 472.0
c(min(mtcars$hp), max(mtcars$hp))      # 52 335
c(min(mtcars$mpg), max(mtcars$mpg))    # 10.4 33.9
scatterplot3d(mtcars$disp, mtcars$hp, mtcars$mpg,
              xlim=c(50,500), ylim=c(0,400), zlim=c(0,50),
              main="disp와 hp에 따른 mpg의 3차원 산점도")

