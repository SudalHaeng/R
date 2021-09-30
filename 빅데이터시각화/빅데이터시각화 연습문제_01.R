##1장 연습문제
#01-(a)
rep(seq(1,4),rep(5,4))
#01-(b)
rep(seq(1,4),5)
#01-(c)
rep(seq(1,6),seq(1,6))
#01-(d)
rep(seq(9,1,-2),5)

#03-(a)
str(iris)
data_a <- iris[-5]
str(data_a)
#03-(b)
data_b <- iris[iris$Species=="setosa",]
summary(data_b)
#03-(c)
data_c <- iris[iris$Sepal.Length>mean(iris$Sepal.Length),]
summary(data_c)
min(data_c$Sepal.Length) > mean(iris$Sepal.Length)
