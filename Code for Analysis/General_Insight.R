
library(dplyr)
library(stringr)
x1 = read.csv("googleplaystore(cln).csv")

x2 = filter(x1, Category != "1.9")

x6 = gsub("\\+|,","",x2$Installs) ; x6 = as.numeric(x6)

x2 = x2 %>% mutate(Installs = x6)
View(x1)

write.csv(x1, "cleaned_data.csv", row.names = F)

View(table(x2$Category))
##################################################

# Removing $ from price
pcln = gsub("\\$","",x1$Price) ; x = as.numeric(pcln) 
x1 = x1 %>% mutate(Price = x)

##################################################

# Size Adjustment
pcln = gsub("M","",x1$Size) ; x = as.numeric(pcln)
x1 = x1 %>% mutate(Size = x)
View(x1)
