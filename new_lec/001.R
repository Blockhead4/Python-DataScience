setwd("D:/workspace-Jwp/python/Data_Science/new_lec")

crime = read.csv("http://datasets.flowingdata.com/crimeRatesByState-formatted.csv")
head(crime)
rownames(crime) = crime[, 1]
rownames(crime)
head(crime)

stars(crime[, 2:8])
stars(crime[, 2:8], flip.labels = FALSE)
stars(crime[, 2:8], flip.labels = FALSE, key.loc = c(1,20))
stars(crime[, 2:8], flip.labels = FALSE, key.loc = c(1,20), draw.segments = TRUE)

#install.packages("aplpack")
library(aplpack)
faces(crime[, 2:8])

education = read.csv("http://datasets.flowingdata.com/education.csv")
head(education)
str(education)

library(lattice)
parallel(education[, 2:7], horizontal.axis = FALSE, col = 1)
summary(education$reading)
color = education$reading > 523
color
color+1
parallel(education[, 2:7], horizontal.axis = FALSE, col = color + 1)
summary(education$math)
color = education$dropout_rate > 5.3
parallel(education[, 2:7], horizontal.axis = FALSE, col = color + 1)
summary(education$dropout_rate)
color = education$math > 525.5
parallel(education[, 2:7], horizontal.axis = FALSE, col = color + 1)

data = read.csv("data/20140528_baseball.csv")
head(data)

model = prcomp(data[, 2:6], scale = T)
summary(model)
plot(model)
biplot(model)
rownames(data)=data[,1]
data
model=prcomp(data[,2:6],scale=T)
biplot(model)

head(USArrests)
pc1 = princomp(USArrests, cor = T)
summary(pc1)
plot(pc1, type='l')
pc1$center 
pc1$scale
pc1$loadings
pc1$scores

plot(pc1$scores[,1], pc1$scores[,2], xlab="Z1", ylab="Z2")
abline(v=0, h=0, col="gray")

biplot(pc1, cex=0.7)
abline(v=0, h=0, col="gray")


#install.packages("arules")
library(arules)

data(package="arules")
data(Groceries)
Groceries
inspect(Groceries[1:10])
summary(Groceries)

sort(itemFrequency(Groceries, type="absolute"), decreasing = T)
round(sort(itemFrequency(Groceries, type="relative"), decreasing = T), 3)

itemFrequencyPlot(Groceries, topN=10, type="absolute")
itemFrequencyPlot(Groceries, topN=10, type="relative")

apriori(Groceries)
rt_rules = apriori(Groceries, parameter = list(support=0.005, confidence=0.5, minlen=2))
summary(rt_rules)
inspect(rt_rules[1:5])

rules_lift = sort(rt_rules, by="lift", decreasing = T)
inspect(rules_lift[1:5])

rules_conf = sort(rt_rules, by="confidence", decreasing = T)
inspect(rules_conf[1:5])

milk_rule = subset(rules_lift, items %in% "whole milk")
milk_rule
inspect(milk_rule[1:5])

rhs.milk_rule = subset(rules_lift, rhs %in% "whole milk")
rhs.milk_rule
inspect(rhs.milk_rule[1:5])

#install.packages("seriation")
library(seriation)
#install.packages("arulesViz")
library(arulesViz)
plot(rhs.milk_rule[1:10], method="graph", measure="lift", shading="confidence")
