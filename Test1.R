print("hello stats")
x <- c("1 many", 2)
data()
View(ChickWeight)
p <- ChickWeight
sam <- sample(p$weight, 10, TRUE)
sam
fin <- p$weight[which(p$weight == 48)]
fin
length(fin)
plot(p$weight, p$Time)
?rnorm
rnorm(10, 20, 2)
7
x[1] <- 5
x[2] <- 10
x
?seq
test <- seq(1, 20, 0.3)
test
"test"

?vector
test2 <- vector("numeric", 10)
test2
for (p in 1:10){
  test2[p] = 28
}

test2


getwd()



test5 <- rep(10, 5)
test5
x
test5 <- rep(x, 5)
test5
col1 <- 1:5
col2 <- 6:10
tabl <- data.frame(col1,col2)
?hist
View(tabl)
hist(tabl$col1)
plot(tabl$col1, tabl$col2)



set.seed(10)

age <- rnorm(20, 40, 5)
weight <- rnorm(20, 55, 10)
height <- rnorm(20, 5.7, 2.4)
tabl2 <- data.frame(age,weight,height)
View(tabl2)
print(tabl2)
mean(tabl2$age)
summary(tabl2$age)

mat <- matrix(1:20, 4, 10)
mat