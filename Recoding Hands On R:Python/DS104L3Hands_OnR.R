## Part Two: Recoding in R
library(dplyr)
library(tidyr)
Eating_Habits <- read_csv("Desktop/DS104 Data Wrangling/Eating_Habits.csv")
View(Eating_Habits)


##Recode 'activity' into new variable called "JunkFood"
Eating_Habits$JunkFood <- NA

Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating fruit'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating raw vegetables'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating candy, chocolate bars'] <- 1
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating potato chips, crisps'] <- 1
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating french fries'] <- 1
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating hamburgers, hot dogs or sausages'] <- 1
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating peanuts'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating whole wheat or rye bread'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Drinking soft drinks, cola or other drinks with sugar'] <- 1
Eating_Habits$JunkFood[Eating_Habits$Activity=='Drinking coffee'] <- 0
Eating_Habits$JunkFood[Eating_Habits$Activity=='Eating Fruit'] <- 0


## Recode sex from text to numbers in the same variable

Eating_Habits$Sex[Eating_Habits$Sex=='Males'] <- 0
Eating_Habits$Sex[Eating_Habits$Sex=='Females'] <- 1

## Dummy code the frequency

library("psych")
Eating_Habits1 <- dummy.code(Eating_Habits$Frequency)
Eating_Habits2 <- data.frame(Eating_Habits, Eating_Habits1)


