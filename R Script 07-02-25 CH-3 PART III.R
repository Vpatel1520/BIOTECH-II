
#Basic Statistics part 3 
data(mtcars)
scatter.smooth(x=mtcars$mpg, y=mtcars$disp, main="Disp ~ mpg")

#Test for a correlation between two variables:
cor.test(mtcars$mpg, mtcars$disp)

#Save and check test results
cor_result <- cor.test(mtcars$mpg, mtcars$disp)
cor_result$estimate
cor_result$p.value 


#View correlation between many variables:
install.packages("corrplot")
library("corrplot")
corrplot(cor(mtcars)) # add more options for practice (?corrplot)

corrplot(cor(mtcars), col.lim = c(-1, 1), type = "full")

corrplot(cor(mtcars), col.lim = c(-1, 1), type = "full",bg = "white",)


#activity
data()
data(USArrests)
View(USArrests)
scatter.smooth(x=USArrests$Murder, y=USArrests$Assault, main="Murder ~ Assualt")
cor.test(USArrests$Murder, USArrests$Assault)
corrplot(cor(USArrests), col.lim = c(-1, 1), type = "full")


#T-test
data(sleep)
t.test (extra ~ group, data = sleep)

data(trees)
View(trees)
t.test(trees$Girth,mu =5)
t.test(trees$Height,mu =5)


#Activity
my_data <- data.frame(
  name = c("1","2","3","4","5","6","7","8","9","10"),
  Height = c(12,21,31,42,45,54,30,48,56,67),
  Girth = c(50,55,60,63,56,75,68,78,79,89)
)
print(my_data)
summary(my_data)

t.test(my_data$Height,mu =5)
t.test(my_data$Girth,mu =5)

height_test <- t.test(my_data$Height,mu =5)
girth_test <- t.test(my_data$Girth,mu =5)

print(height_test)
print(girth_test)

height_test$p.value
girth_test$p.value
#Both p-values are extremely small (< 0.05), so we reject the null hypothesis.
#This means the means of both Height and Girth are significantly different from 5.





#Anova
my_data <- data.frame(
  group = rep(c("Group1", "Group2", "Group3"), each = 10),
  value = rnorm(10)
)

#Displays the first few rows of the dataframe
head(my_data)

#Perform ANOVA
res_aov2 <- aov(value ~ group, data = my_data)

#Display the ANOVA results
summary (res_aov2)

#perform Tukey's HSD test
tukey_result <- TukeyHSD(res_aov2)

#displays the Tukeys HSD test results
print(tukey_result)


#Simple Linear Regression
linear_mod <- lm(dist ~ speed, data=cars) 

#Multiple Linear Regression
linear_mod2 <- lm(mpg ~ disp + qsec, data=mtcars)
summary(linear_mod2)




#Activity:
data(USArrests)
View(USArrests)
scatter.smooth(x=USArrests$Murder, y=USArrests$Assault, main="Murder ~ Assault")
cor.test(USArrests$Murder, USArrests$Assault)
corrplot(cor(USArrests), col.lim = c(-1, 1), type = "full")
t.test(Murder ~ Assault, data = USArrests)



#Activity:
data(mtcars)
View(mtcars)

t.test(mpg ~ am, data = mtcars)
boxplot(mpg ~ am, data = mtcars, 
        main = "MPG by Transmission Type",
        xlab = "Transmission Type",
        ylab = "Miles Per Gallon (mpg)",
        col = c("blue3", "orange2"),
        names = c("Automatic", "Manual"))






#Activity
library(tibble)
data <- tibble(
  name = c("vaibhavi", "vaibhav", "vaishali", "ravinder", "pandu"),
  age = c(22, 17, 25, 39, 48)
)
head(data)
glimpse(data)
clean_data <- na.omit(data)
arrange(data, age)


