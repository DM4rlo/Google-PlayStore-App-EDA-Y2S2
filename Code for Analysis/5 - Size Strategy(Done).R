
# Size Strategy
library(ggplot2)
library(dplyr)
library(plotly)

data = read.csv("googleplaystore(cln).csv")

pcln = gsub("M","",data$Size) ; x = as.numeric(pcln)

data = data %>% mutate(Size = x)

ggplot(data,aes(Size,Rating)) + geom_point(size=5,color="#0080ff")

       