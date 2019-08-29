setwd("C:/Users/Jwp/Desktop/workspace/python/Data_Science/new_lec")
library(stringr)

data = read.csv("data/sales_건강음료.csv", header=T)
data$MON = str_sub(data$YM, 5, 6)
data$MON = as.numeric(data$MON)

data
data1 = data[,c(-1, -2)]
data1
model = lm(formula = QTY ~ ., data=data1)
summary(model)

data2 = data1[,-6]
head(data2)

model2 = lm(formula = QTY ~ ., data=data2)
summary(model2)

head(data1)
step1 = step(model, method='both')
summary(step1)
