1+1
hello
"hello"
2*3
data = c(1,2,3)
data
View(data)
mydataframe <- data.frame(
 name = c("vai","bhavi"),
 age = c(10,10),
 height = c(150,200)
)
mydateframe
attach(mydataframe)
plot(age~height)

getwd()
setwd("C:/Users/Student/Documents")
install.packages("ggplot2")
library(ggplot2)

mydataframe <- data.frame(
  name = c("vaibhavi","ramya"),
  favorite_food = c("Pizza", "Burger"),
  cuisine = c("Italian", "Japanese"),
  spicy = c(TRUE, FALSE)
)
mydataframe
attach(mydataframe)
plot(favorite_food~cuisine)

plot(cuisine ~ favorite_food, 
     main = "Favorite Food vs. Cuisine", 
     xlab = "Favorite Food", 
     ylab = "Cuisine")1

mydataframe <- data.frame(
  name = c("vaibhavi","ramya"),
  money = c(1000,2000),
  debt = c(500,1000)
)
  
attach(mydataframe)
plot(money~debt)


mydataframe <- data.frame(
  name = c("vaibhavi","ramya"),
  money = c(1000,2000),
  debt = c(500,1000)

  mydateframe
  attach(mydataframe)
  plot(money~debt)

  
  
  x <- 1  
  x<-1
  x < -1  
  (X <- -1)   
  X == x  
  X != x  
  x <- 1.0  
  x <- 1L   
  x <- “one”   
  x <- TRUE ; y <- FALSE  
  x <- 1+1i  
  vector <- c(1,2,3,4)  
  vector <- 1:4  
  matrix <- matrix (vector, nrow = 2, ncol = 2)  
  df <- data.frame(id = c("A","B","C","D"), values = vector)  
df <- data.frame(id = c("A","B","C","D"), values = vector)  
(20+30)*(45-30)
4000/500
4^2 
x <- 1
x<-1
x <-1
(x <--1)
x<-1
x < -1
X <- -1) 
X <- -1) 
(X <- -1) 
(y <-2)
y <-2
x < -1
x<-1
X == x
X != x


a <- 2.5
class(a)

b <- 3L
class(b)

c <- "one"
class(c)

x <- TRUE ; y <- FALSE
class(x)
class(y)

d <- 1+1i 
class(d)

vaiv <- c(1,2,3,4)
class(vaiv)

vaiv <-1:4
class(vaiv)


vaim <- matrix (vaiv,nrow = 3,ncol =3)
df <- data.frame(id = c("A","B","C","D"), values = vaiv)




vaiv <- c(1,2,3,4,5,6,7)
class(vaiv)

vaiv <-1:7
class(vaiv)


vaim <- matrix (vaiv,nrow = 7,ncol =7)
df <- data.frame(id = c("A","B","C","D","E","F","G"), values = vaiv)

num_vec <- numeric(5)
num_vec <- c(1,2,3,4)
num_vec[5] <- 5

num_vec[3] <- num_vec(5)
num_vec[3] <- num_vec[5]

cha_vec <- c("vai1", "vai2", "vai3", "vai4")
cha_vec[c(1,3)]
cha_vec[c(2,4)]


names(num_vec) <-c("fi", "se", "th", "fo", "fi")
num_vec
num_vec[c("se","th")]


names(cha_vec) <-c("na1","na2","na3","na4")
cha_vec[c(1,4)]

num_vec <- numeric(5)
num_vec <- c(11,12,13,14,15)
num_vec[4]

cha_vec <- c("T1", "T2", "T3", "T4","T5")
names(num_vec) <-c("a", "b", "c", "d", "e")
(names(num_vec) <- cha_vec)


(new_vec <- num_vec[c(1,3,5)])
(new_vec2 <- names(new_vec))


(10+30)*(40-10)
45/34
5^2
2^(3*34) 
sqrt(23) 
log10(45)
log(43)
log(x = 45,base = 33) 

Leaf_area <- c(2.5, 1.6, 2.2, 2.6)
Leaf_mass <- c(22, 15, 20, 24)
mean(Leaf_area)
mean(Leaf_mass)


(LMA <- Leaf_mass / Leaf_area)
mean(LMA)



x <- 1
x<-1
x < -1
(X <- -1)
X == x
X != x

age <- 22
age<-22
22 < -21
(money <- -100)
20 == 20
20 == 23
20 != 23
20 != 20


a <- 2.5
class(a)

b <- 3L
class(b)

c <- "one"
class(c)

x <- TRUE ; y <- FALSE
class(x)
class(y)

d <- 1+1i 
class(d)


my_vector <- c(10, 20, 30, 40,50,60,70,80,90)
vector <- 1:9
my_matrix <- matrix(my_vector, nrow = 3, ncol = 3)
df <- data.frame(id = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), values = my_vector)

num_vec <- numeric(8)
num_vec <- c(1, 2, 3, 4,5,6,7,8)
num_vec[7]
num_vec[3] <- num_vec[5]
cha_vec <- c("apple", "banana", "grapes", "berries","guava","sugarcane","kiwi","mango")
names(num_vec) <- c("first", "second", "third", "fourth", "fifth","sixth","seven","eight")
num_vec[c("second","fourth")]


num_vec <- numeric(5)
num_vec <- c(1,2,3,4,5)
cha_vec <- c("apple", "banana", "grapes", "guava","mango")
names(num_vec) <-c("a", "b", "c", "d", "e")
(names(num_vec) <- cha_vec)

(new_vec <- num_vec[c(1,3,5)])
(new_vec2 <- names(new_vec))
