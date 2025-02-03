#dataframe and function
#Make a dataframe
setwd("C:/Users/Student/Downloads")
getwd()
mydataframe <-read.csv("newsample.csv")
print(mydataframe)
summary(mydataframe)



#ceate a dataframe manually
my_df <- data.frame (
  ID = c(1:4),
  Leaf_area = c(2.5, 1.6, 2.2, 2.6),
  Leaf_mass = c(22, 15, 20, 24)
)

print (my_df) 
summary (my_df)

#example 1
my_df <- data.frame (
  ID = c(1:8),
  Age = c(12,13,15,16,17,18,19,20),
  Height = c(155,156,157,158,159,160,161,162)
)

print (my_df) 
summary (my_df)

#example 2
setwd("C:/Users/Student/Desktop/WATERMELON")
getwd()
mydataframe <- read.csv("C:/Users/Student/Desktop/WATERMELON/percentage of watermelon2.csv")
print(mydataframe)
summary(mydataframe)



#View the dataframe
my_df$Leaf_area
my_df [2,]
my_df[,2]
my_df [2,2]
my_df [2:3,1:2] 
my_df$LMA <- my_df$Leaf_mass / my_df$Leaf_area


# Activity1 Names of family members 
names_vector <- c("vaibhavi", "vaibhav", "vaishali", "ravindra", "shruthi")
my_people <-data.frame(
  Name = names_vector,
  Age=c(23, 17, 45, 50, 22), 
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  CommuteTime = c(15, 30, 20, 25, 10)        
)
mean(my_people$Age)
mean(my_people$CommuteTime)
min(my_people$Age)
max(my_people$CommuteTime)


#Conditional statements
num1 <- 1
num2 <- 2

num1 == num2
num1 < num2
num1 > num2
!(num1 < num2)
num1 != num2

#Conditional statements
var1 <- 1
var2 <- "red"
(var1==1) & (var2=="red")
(var1==1) & (var2=="green")
(var1==1) | (var2=="red")
(var1==1) | (var2=="green")



#If-else statements
num1 <- 1
num2 <- 2

if (num1 == num2)
{	  
  print ("num1 equals num2")
} else 
{  
  print ("num1 does not equal num2")
}

#Functions

my_function <- function ()
{
  print ("Hello World!")
}

#Return in Functions

my_function <- function(x, y) {
  val <- x + y
  return(val)
}

my_function(1,2)



#Activity2 decoding the function
my_function <- function(x, y) {
  if (x>y)
  {
    val <- x^2
    return(val)
  } else
  {
    val <- y^3
    return(val)
  }
}

my_function(1)
my_function(1,2)


#making a function
activity_function <- function(x){
  random <- sample(1:5,1)
  if(x == random){
    print("These values are the same!")
  }else
  {
    print(random)
    print("These two numbers are not the same")
  }
}


activity_function <- function(x){
  random <- sample(1:7,1)
  if(x == random){
    print("These values are the same!")
  }else
  {
    print(random)
    print("These two numbers are not the same")
  }
}


activity_function <- function(x){
  random <- sample(1:5,1)
  if(x == random){
    print("These values are the same!")
  }else
  {
    print(random)
    print("These two numbers are not the same")
  }
}
