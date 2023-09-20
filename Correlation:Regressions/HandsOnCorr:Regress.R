mtcars


#scatterplot
library("ggplot2")
ggplot(data=mtcars, aes(x = hp, y = qsec)) + geom_point() + geom_smooth(method='lm', se = TRUE)

#Negative correllation because the points are in a top to bottom trend

#Linear Regression:
regression <- lm(qsec~hp, mtcars)
summary(regression)

# y = -0.018458x + 20.556354 

# r^2 is .49, horsepower explains 49% of the variance in quarter mile time

library("ggplot2")
ggplot(data=mtcars, aes(x = wt, y = qsec)) + geom_point() + geom_smooth(method='lm', se = TRUE)
 #uncorrellated  

#linear regression
regression2 <- lm(qsec~wt, mtcars)
summary(regression2)

# y = -0.3191x + 18.8753

# r^2 is -0.00179 so the weight does not contribute to the variances in the quarter mile time

library("ggplot2")
ggplot(data=mtcars, aes(x = hp, y = qsec)) + geom_point() + geom_smooth(method='lm', se = TRUE)


