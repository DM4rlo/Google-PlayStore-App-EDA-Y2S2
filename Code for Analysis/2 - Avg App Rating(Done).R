
# Rating on Apps
library(ggplot2)
library(dplyr)

data = read.csv("googleplaystore(cln).csv")

View(data)

p = ggplot(data, aes(Rating)) + geom_bar(fill = "#0080ff") 
p


# Avg Rating
x1 = as.numeric(data$Rating)

data = data %>% mutate(Rating=x1) 

View(data)

q = data$Rating
colMeans(data.frame(q), na.rm = TRUE)
