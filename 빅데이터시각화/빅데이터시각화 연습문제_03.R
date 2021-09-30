#01
attach(iris)
plot(Sepal.Length, Sepal.Width, bty="l")
lines(c(mean(Sepal.Length),mean(Sepal.Length)), c(0,6),lty=2)
lines(c(4,9), c(mean(Sepal.Width),mean(Sepal.Width)),lty=2)

#03
layout(matrix(c(1,0,3,2), 2, 2,byrow = TRUE),
       widths = c(3,1), heights = c(1,3), respect = TRUE)

mul <- layout(matrix(c(1,0,3,2), 2, 2, byrow = TRUE),
              widths = c(3,1), heights = c(1,3), respect = TRUE)
layout.show(mul)


## 여백 조정 후 그림
par(mar=c(0,3,1,1))
boxplot(mtcars$hp,col="white", horizontal = TRUE,axes=FALSE, space=0)

par(mar=c(3,0,1,1))
boxplot(mtcars$mpg,col="white", horizontal = FALSE,axes=FALSE, space=0)

par(mar=c(4,4,1,1))
plot(mtcars$mpg ~ mtcars$hp, pch=1, cex=1, col="blue",xlab="hp",ylab="mpg")
rug(mtcars$hp,side=3)
rug(mtcars$mpg,side=4)
abline(lm(mtcars$mpg~mtcars$hp), col="red")


#05
#install.packages("lattice")
library(lattice)
attach(mtcars)
dotplot(disp~mpg|cyl)
