#Data Visualization using ggplot2
#Introduction to ggplo2
library (ggplot2)
data(mpg)
ggplot(data = mpg)
aes()
ggplot(mpg, mapping = aes(x= cty, y = hwy))

#geom_*()
#layers
ggplot(mpg, aes(cty, hwy)) +
geom_point() + 
geom_smooth(formula = y ~ x, method = "lm")


#make labels
ggplot(mpg, aes(cty, hwy)) +
geom_point() + 	
labs(x = "City",
y = "Highway ",
title = "City vs Highway ")

#Scales
ggplot(mpg, aes(cty, hwy, color = class)) +
geom_point() +
scale_color_viridis_d()


#facets
ggplot(mpg, aes(cty, hwy)) +
geom_point() +
facet_grid(year ~ drv)


#coordinates
ggplot(mpg, aes(cty, hwy)) +
geom_point() +
coord_fixed()	

#Themes
ggplot(mpg, aes(cty, hwy, colour = class)) +
geom_point() +
theme_minimal() +
theme(
legend.position = "top",
axis.line = element_line(linewidth = 0.75),
axis.line.x.bottom = element_line(colour = "blue")
)


#Themes
ggplot(mpg, aes(cty, hwy, colour = class)) +
geom_point() +
theme_bw() +
theme(
legend.position = "top",
axis.title = element_text(size = 17), 
axis.text = element_text(size = 12),    
panel.grid.major = element_blank(),     
panel.grid.minor = element_blank()       
)



#Activity
ggplot(mpg, aes(cty, hwy, colour = class)) +
geom_point() +
theme_minimal() +
facet_grid(year ~ drv) +
scale_color_viridis_d() +
labs(x = "City",
y = "Highway ",
title = "City vs Highway ") +
theme(
legend.position = "top",
axis.line = element_line(linewidth = 0.75),
axis.line.x.bottom = element_line(colour = "blue")
)



#Activity
data()
data(Orange)
View(Orange)
ggplot(data = Orange)
aes()
ggplot(Orange, mapping = aes(x= age , y = circumference))


ggplot(Orange, aes(age, circumference)) +
geom_point() + 
geom_smooth(formula = y ~ x, method = "lm")

ggplot(Orange, aes(age, circumference)) +
geom_point() + 	
labs(x = "age",
y = "circumference",
title = "age vs circumference")


ggplot(Orange, aes(age, circumference)) +
geom_boxplot() + 
geom_boxplot(formula = y ~ x, method = "lm")

ggplot(Orange, aes(age, circumference)) +
geom_boxplot() + 	
labs(x = "age",
y = "circumference",
title = "age vs circumference")


ggplot(Orange, aes(age, circumference, color = Tree)) +
geom_boxplot() +
scale_color_viridis_d()

ggplot(Orange, aes(age, circumference)) +
geom_point() +
facet_grid(Tree ~ .)

ggplot(Orange, aes(age, circumference, color = Tree)) +
geom_point() +
facet_grid(Tree ~ .) +
scale_color_viridis_d() +
labs(x = "age", 
y = "circumference", 
title = "age vs Circumference")




#Activity
#1  
ggplot(Orange, aes(age, circumference, colour = Tree)) +
geom_boxplot() +
theme_minimal() +
theme(
legend.position = "top",
axis.line = element_line(linewidth = 0.75),
axis.line.x = element_line(colour = "red")
)


#2
ggplot(Orange, aes(age, circumference, colour = age)) +
geom_boxplot() +
theme_minimal() +
theme(
legend.position = "top",
axis.line = element_line(linewidth = 0.5),
axis.line.x = element_line(colour = "blue")
)   

#2
ggplot(Orange, aes(age, circumference, colour = age)) +
geom_boxplot() +
theme_minimal() +
theme(
legend.position = "top",
axis.line = element_line(linewidth = 0.5),
axis.line.x = element_line(colour = "blue")
)   


#3
ggplot(Orange, aes(age, circumference, colour = Tree)) +
geom_boxplot() +
theme_bw() + #black and white
theme(
legend.position = "top",
axis.title = element_text(size = 16),   
axis.text = element_text(size = 11),  
panel.grid.major = element_blank(),     
panel.grid.minor = element_blank()  
) 

#4
ggplot(Orange, aes(age, circumference, colour = Tree)) +
geom_point() +
theme_bw() +
theme(
legend.position = "bottom",
axis.title = element_text(size = 26),   
axis.text = element_text(size = 16),
axis.line.x.bottom = element_line(color = "blue"),
axis.line.y.left = element_line(color = "yellow"),
axis.text.y.left = element_text(color = "green"),
legend.background = element_rect(color = "yellow"),  
legend.title = element_text(color = "blue"),
panel.grid.major = element_blank(),  # Remove major grid lines   
panel.grid.minor = element_blank()  # Remove minor grid lines
)



#5 
ggplot(Orange, aes(age, circumference, colour = Tree)) +
geom_boxplot() +
theme_bw() +
theme(
legend.position = "bottom",
axis.title = element_text(size = 26),   
axis.text = element_text(size = 16),
axis.line.x.bottom = element_line(color = "blue"),
axis.line.y.left = element_line(color = "yellow"),
axis.text.y.left = element_text(color = "green"),
axis.text.x.bottom = element_text(color = "blue"),
legend.background = element_rect(color = "yellow"),  
legend.title = element_text(color = "blue"),
panel.grid.major = element_line(color = "green"),
panel.border = element_rect(color = "orange"),
)



#6
ggplot(Orange, aes(age, circumference, colour = Tree)) +
geom_point() +
theme_bw() +
facet_grid(Tree ~ .) +
theme(
legend.position = "bottom",
axis.title = element_text(size = 12, face = "bold", color = "darkblue"),   
axis.text = element_text(size = 12, face = "italic", color = "darkgreen"),  
axis.line.x.bottom = element_line(color = "blue", size = 1.2),             
panel.grid.major = element_line(color = "green", size = 0.5, linetype = "dashed"),  
panel.grid.minor = element_line(color = "lightgrey", size = 0.2),        
plot.title = element_text(size = 18, face = "bold", color = "purple"),    
) +
labs(
title = "plot of Trunk Circumference vs Age for Each Tree",
x = "Age (Days)",
y = "Trunk Circumference (mm)"
)

#7
ggplot(Orange, aes(age, circumference, colour = Tree)) +
geom_point(size = 3) +  
theme_bw() +
facet_grid(Tree ~ .) +
theme(
legend.position = "bottom",
axis.title = element_text(size = 12, face = "bold", color = "darkblue"),   
axis.line.x.bottom = element_line(color = "blue", size = 1.2),             
axis.line.y.left = element_line(color = "yellow", size = 1.2),             
axis.text.y.left = element_text(color = "green", size = 16),               
axis.text.x.bottom = element_text(color = "blue", size = 16),              
legend.background = element_rect(color = "yellow", size = 0.5),           
legend.title = element_text(color = "blue", face = "bold", size = 12),    
panel.grid.major = element_line(color = "green", size = 0.5, linetype = "dashed"),  
panel.grid.minor = element_line(color = "lightgrey", size = 0.2),         
panel.border = element_rect(color = "orange", size = 2),                  
plot.title = element_text(size = 15, face = "bold", color = "purple"),    
) +
labs(
title = "Plot of Trunk Circumference vs Age for Each Tree",
x = "Age (Days)",
y = "Trunk Circumference (mm)"
)


#8 
ggplot(Orange, aes(age, circumference, colour = Tree, group = Tree)) +
geom_line(size = 1.5) +  
theme_bw() +
facet_grid(Tree ~ .) +
theme(
legend.position = "bottom",
axis.title = element_text(size = 12, face = "bold", color = "darkblue"),   
axis.text = element_text(size = 16, face = "italic", color = "darkgreen"),  
axis.line.x.bottom = element_line(color = "blue", size = 1),            
axis.line.y.left = element_line(color = "yellow", size = 1),             
axis.text.y.left = element_text(color = "green", size = 12),               
axis.text.x.bottom = element_text(color = "blue", size = 12),              
legend.background = element_rect(color = "yellow", size = 0.5),           
legend.title = element_text(color = "blue", face = "bold", size = 12),     
panel.grid.major = element_line(color = "green", size = 0.5, linetype = "dashed"),  
panel.grid.minor = element_line(color = "lightgrey", size = 0.2),         
panel.border = element_rect(color = "orange", size = 2),                  
plot.title = element_text(size = 15, face = "bold", color = "purple"),    
) +
labs(
title = "Line Plot of Trunk Circumference vs Age for Each Tree",
x = "Age (Days)",
y = "Trunk Circumference (mm)"
)


#9 
ggplot(Orange, aes(age, circumference, colour = Tree, fill = Tree)) +
geom_violin(trim = FALSE, size = 1.2) +  
theme_bw() +
theme(
legend.position = "bottom",
axis.title = element_text(size = 12, face = "bold", color = "darkblue"),   
axis.text = element_text(size = 12, face = "italic", color = "darkgreen"),  
axis.line.x.bottom = element_line(color = "blue", size = 1),             
axis.line.y.left = element_line(color = "yellow", size = 1),             
axis.text.y.left = element_text(color = "green", size = 12),               
axis.text.x.bottom = element_text(color = "blue", size = 12),              
legend.background = element_rect(color = "yellow", size = 0.5),           
legend.title = element_text(color = "blue", face = "bold", size = 12),     
panel.grid.major = element_line(color = "green", size = 0.5, linetype = "dashed"),  
panel.grid.minor = element_line(color = "lightgrey", size = 0.2),         
panel.border = element_rect(color = "orange", size = 2),                
plot.title = element_text(size = 12, face = "bold", color = "purple"),    
) +
labs(
title = "Trunk Circumference vs Age for Each Tree",
x = "Age (Days)",
y = "Trunk Circumference (mm)"
)

#10 
ggplot(Orange, aes(x = age, y = circumference, colour = Tree, group = Tree)) +
geom_point(size = 4, shape = 21, fill = "red", stroke = 1.5) +  
geom_line(size = 1.2, linetype = "solid") +  
theme_bw() +
facet_grid(Tree ~ .) + 
theme(
legend.position = "bottom",
axis.title = element_text(size = 12, face = "bold", color = "darkblue"),   
axis.text = element_text(size = 12, face = "italic", color = "darkgreen"),  
axis.line.x.bottom = element_line(color = "blue", size = 1),             
axis.line.y.left = element_line(color = "yellow", size = 1),             
axis.text.y.left = element_text(color = "green", size = 12),               
axis.text.x.bottom = element_text(color = "blue", size = 12),              
legend.background = element_rect(color = "yellow", size = 0.5),            
legend.title = element_text(color = "blue", face = "bold", size = 12),     
panel.grid.major = element_line(color = "green", size = 0.5, linetype = "dashed"),  
panel.grid.minor = element_line(color = "lightgrey", size = 0.2),         
panel.border = element_rect(color = "orange", size = 2),                  
plot.title = element_text(size = 18, face = "bold", color = "purple"),    
) +
labs(
title = "Point & Line Plot of Trunk Circumference vs Age",
x = "Age (Days)",
y = "Trunk Circumference (mm)"
)




#Part 2
#Customization and Visualization


library(dplyr)
library(ggplot2)
library(dplyr)

#Combine components
ggplot(mpg, aes(cty, hwy)) +
geom_point(mapping = aes(colour = displ)) +
geom_smooth(formula = y ~ x, method = "lm") +
scale_colour_viridis_c() +
facet_grid(year ~ drv) +
coord_fixed() +
theme_minimal() +
theme(panel.grid.minor = element_blank())



library(dplyr)
library(ggplot2)
library(dplyr)



#geom_histogram
ggplot(Orange, aes(x = circumference, fill = Tree)) +
geom_histogram(bins = 10, color = "black", alpha = 0.7) +
theme_bw() +
theme(
legend.position = "top",
legend.title = element_text(size = 16, face = "bold", color = "blue"),
axis.title = element_text(size = 20, face = "bold", color = "darkblue"),
axis.text = element_text(size = 14, face = "italic", color = "darkgreen"),
plot.title = element_text(size = 20, face = "bold", color = "purple")
) +
labs(
title = "Histogram of Trunk Circumference",
x = "Trunk Circumference (mm)",
y = "Count",
fill = "Tree ID"
)



#geom_point
ggplot(Orange, aes(x = circumference, y = age)) +
geom_point() +
theme_bw() +
theme(
legend.position = "top",
legend.title = element_text(size = 16, face = "bold", color = "blue"),
axis.title = element_text(size = 20, face = "bold", color = "darkblue"),
axis.text = element_text(size = 14, face = "italic", color = "darkgreen"),
plot.title = element_text(size = 20, face = "bold", color = "purple")
) +
labs(
title = "Plot of Orange data",
x = "Trunk Circumference (mm)",
y = "Count"
)

#geom_line
ggplot(Orange, aes(x = circumference, y = age)) +
geom_line() +
theme_bw() +
theme(
legend.position = "top",
legend.title = element_text(size = 16, face = "bold", color = "blue"),
axis.title = element_text(size = 20, face = "bold", color = "darkblue"),
axis.text = element_text(size = 14, face = "italic", color = "darkgreen"),
plot.title = element_text(size = 20, face = "bold", color = "purple")
) +
labs(
title = "Plot of Trunk Circumference",
x = "Trunk Circumference (mm)",
y = "Count",
)


#geom_boxplot
ggplot(Orange, aes(x = Tree, y = age)) +
geom_boxplot() +
theme_bw() +
theme(
legend.position = "top",
legend.title = element_text(size = 16, face = "bold", color = "blue"),
axis.title = element_text(size = 20, face = "bold", color = "darkblue"),
axis.text = element_text(size = 14, face = "italic", color = "darkgreen"),
plot.title = element_text(size = 20, face = "bold", color = "purple")
) +
labs(
title = "BoxPlot of Trunk Circumference",
x = "Trunk Circumference",
y = "Tree")




#Activity
data()
data(mpg)
View(mpg)
ggplot(data = mpg)
aes()
ggplot(mpg, mapping = aes(x= year , y = trans))


#geom_bar
ggplot(mpg, aes(x = class)) +
geom_bar() +
labs(title = "Class vs Count",
subtitle = "Plot",
x = "Class",
y = "Count") +
theme(
axis.title = element_text(size = 10),
axis.text = element_text(size = 10),
axis.line.x.bottom = element_line(color = "blue"),
axis.line.y.left = element_line(color = "yellow"),
axis.text.y.left = element_text(color = "green"),
axis.text.x.bottom = element_text(color = "blue")
)



#geom_bar(stack)
ggplot(mpg,aes(x = manufacturer, fill = drv)) +
geom_bar(position = "stack")
ggplot(mpg, aes(x = manufacturer, fill = drv)) +
geom_bar(position = "stack") +
labs(title = "Manufacturer vs Drive",
subtitle = "Stacked Bar Plot by Drive Type",
x = "Manufacturer",
y = "Count") +
theme(
axis.title = element_text(size = 10),
axis.text = element_text(size = 10),
axis.line.x.bottom = element_line(color = "blue"),
axis.line.y.left = element_line(color = "yellow"),
axis.text.y.left = element_text(color = "green"),
axis.text.x.bottom = element_text(color = "blue")
)





#part 3
#Knitr and R Markdown
if (!require("knitr")) {
  install.packages("knitr")
}

library("knitr")  

library(ggplot2)


