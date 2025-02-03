#Data Transformation and Basic Visualization
data()
data(trees)
summary(trees)
head(trees)
class(trees)
str(trees)
dim(trees)
names(trees)



#Data transformation - dplyr 

install.packages("dplyr")
library(dplyr)

filter(trees, Volume > 40)
arrange(trees, Girth)
select(trees,Height,Volume)
mutate(trees,aspect_ratio = Height/Volume)
mutate(trees,aspect_ratio = Height-Volume)
summarize(trees,mean_height = mean(Height),sd_height = sd(Height))


filter(trees, Volume > 80)
arrange(trees, Girth)
select(trees,Height,Volume)
mutate(trees,aspect_ratio = Height/Volume)
mutate(trees,aspect_ratio = Height-Volume)
summarize(trees,mean_height = mean(Height),sd_height = sd(Height))


#use the pipe operator
trees %>%
  mutate(aspect_ratio = Height/Volume) %>%
  filter(Volume > 40) %>%
  summarise(mean_height = mean(Height),
            mean_volume =mean(Volume))

trees %>%
  mutate(aspect_ratio = Height*Volume) %>%
  filter(Volume > 40) %>%
  summarise(mean_height = mean(Height),
            mean_volume =mean(Volume))

trees %>%
  group_by(Girth) %>%
  summarise(mean_height = mean(Height))
`print(n = ...)`




#Activity 2.1
install.packages("nycflights13")
library(nycflights13)
library(dplyr)

#1 filter
filter(flights,month == 7 | month == 8 | month == 9)

#2 arrange
arrange(flights,dep_delay)
arrange(flights,arr_delay)

#3 select
new_flights <- select(flights, month, day, dep_time)

#4 mutate
mutate(flights,speed = distance / air_time * 60)

#5 summarize
flights %>%
  group_by(origin) %>%
  summarise(delay = mean(arr_delay, na.rm = TRUE))




#Process your data using dplyr

library(dplyr)
updated_people <- my_people %>%
  mutate(new_age = age + 1) %>%
  arrange(desc(new_age))

head(updated_people)  
str(updated_people)
summary(updated_people)

write.csv(updated_people, file = "Newdataframe.csv", row.names = TRUE)



#Basic Data visualization

my_people <- data.frame(
  name = c("vaibhavi", "vaibhav", "vaishali", "ravinder"),
  age = c(23, 17, 45, 50),
  gender = c("female", "male", "female", "male"),
  commute = c(30, 45, 20, 25)
)

plot (my_people$age, my_people$commute)


#Activity: Customizing base R plots
plot(my_people$age, my_people$commute,     
     xlab = "Age",      
     ylab = "Commute",     
     main = "Age vs Commute",     
     pch = ifelse(my_people$name == "vaibhavi", 11, 3),     
     col = ifelse(my_people$name == "vaibhavi", "green", "blue"))  

legend("bottomleft", c("vaibhavi", "Others"),        
       col = c("orange", "red"),        
       pch = c(13, 9))



my_people <- data.frame(
  name = c("vaibhavi", "vaibhav", "vaishali", "ravinder","shruthi","hari","sathwika","ramya"),
  age = c(23, 17, 45, 50, 32, 44, 43, 62),
  gender = c("female", "male", "female", "male", "female","female","female","female"),
  commute = c(30, 45, 20, 25, 34, 56, 70, 90)
)

plot (my_people$age, my_people$commute)

plot(my_people$age, my_people$commute,     
     xlab = "Age",      
     ylab = "Commute",     
     main = "Age vs Commute",     
     pch = ifelse(my_people$name == "vaibhavi", 11, 3),     
     col = ifelse(my_people$name == "vaibhavi", "green", "blue"))  

legend("bottomleft", c("vaibhavi", "Others"),        
       col = c("orange", "red"),        
       pch = c(13, 9))


#to save the plot
png("myplot.png")
plot(my_people$age, my_people$commute)


#Activity: Make your dataframe and plot


study_data <- data.frame(
  name = c("vaibhavi","vai","bee","crr"),
  Study_Hours = c(1,2,3,4),
  Test_Scores = c(50,55,60,63)
)

head(study_data)
plot (study_data$Study_Hours, study_data$Test_Scores)
plot(study_data$Study_Hours, study_data$Test_Scores,
     xlab = "Study Hours",
     ylab = "Test Scores",
     main = "Study Hours vs Test Scores",
     pch = ifelse(study_data$name == "vaibhavi", 13, 9),
     col = ifelse(study_data$name == "vaibhavi", "blue", "red")) 

legend("topleft", c("Vaibhavi", "Others"),        
       col = c("blue", "red"),        
       pch = c(13, 9))
