
# Pricing = Paid vs Free
library(ggplot2)
library(dplyr)
library(plotly)

data = read.csv("googleplaystore(cln).csv") 

dt1 = filter(data,Category %in% c("BUSINESS","FAMILY","FINANCE",
                                  "GAME","LIFESTYLE","MEDICAL",
                                  "TOOLS"))

dt2 = filter(dt1,Price < 101.00)

ggplot(dt2, aes(Price,Category,color=Category)) + 
  geom_point(size=3,position = position_jitterdodge(dodge.width = 0.9, jitter.width = 0.2)) +
  geom_point(size=2,color="black")
