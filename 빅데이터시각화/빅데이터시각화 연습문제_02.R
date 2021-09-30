mtcars
#01-(a)
data_a <- mtcars[order(mtcars$mpg,decreasing = TRUE), ]
head(data_a,5)

#01-(b)
data_b <- mtcars[order(mtcars$mpg),]
head(data_b,1)

#01-(c)
quantile(mtcars$mpg,probs=seq(0,1,by=0.1))

#01-(d)
data_d <- mtcars[order(mtcars$mpg,decreasing=TRUE),]
data_d$rank <- rank(-data_d$mpg,ties.method = "min")
data_d["Honda Civic","rank"]

#01-(e)
data_e <- mtcars[mtcars$disp>=200 & mtcars$disp<300,]
head(data_e[order(-data_e$mpg),],1)


#01-(f)
data_f1 <- mtcars[mtcars$am==0,]
data_f2 <- mtcars[mtcars$am==1,]
summary(data_f1)
summary(data_f2)

#01-(g)
table(mtcars$cyl,dnn="cyl")

#01-(h)
table_h <- table(mtcars$cyl,mtcars$am,dnn=c("cyl","am"))
table_h
margin.table(table_h,1)
margin.table(table_h,2)

#03
set.seed(1)
x_3 <- rexp(1000,rate=1/5)
hist(x_3,probability = TRUE,xlim=c(-5,40),ylim=c(0,0.15),breaks = 20)
lines(density(x_3),col="red")

#05
f_05 <- function(l,i,n){
  p = l*(i/(1-(1+i)**(-n)))
  print(p)
}
f_05(1000,0.01,10)

1000*(0.01/(1-(1+0.01)**(-10)))

#07