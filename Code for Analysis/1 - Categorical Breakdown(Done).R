# Android Market Breakdown

library(ggplot2)
library(dplyr)

df = read.csv("googleplaystore(cln).csv")

val = as.data.frame(table(df$Category))

val2 = filter(val, Freq > 300)

ggplot(val2, aes(Freq,Var1, fill=Var1)) + geom_col() + 
  labs(title = "Most Popular Categories",x="Frequency",y="Categoies",fill="Categories")
