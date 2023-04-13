
# Rating of App based on Genre
library(ggplot2)
library(dplyr)

data = read.csv("googleplaystore(cln).csv")

# selecting top 12 most popular categories
dt1 = filter(data,Category %in% c("BUSINESS","COMMUNICATION",
                                  "FAMILY","FINANCE",
                                  "GAME","HEALTH_AND_FITNESS",
                                  "LIFESTYLE","MEDICAL",
                                  "PERSONALIZATION",
                                  "PRODUCTIVITY","SPORTS",
                                  "TOOLS"))

# Faceting Data 
p = ggplot(dt1, aes(Rating)) + geom_bar(fill = "#0080ff") + facet_wrap(~Category,ncol=3,scales="free_y") 
p