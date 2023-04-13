
# Size Strategy
library(ggplot2)
library(dplyr)
library(plotly)

data = read.csv("googleplaystore(cln).csv")
pcln = gsub("M","",data$Size) ; x = as.numeric(pcln)

data = data %>% mutate(Size = x)


dt1 = filter(data,Category %in% c("GAME","FAMILY") & Size < 101)

ggplot(dt1,aes(Rating,Size,color=Category)) + geom_point(size=3)