#load data set
data = iris

#load library
library(randomForest)

#model making
model = randomForest(iris$Species~., data = iris, ntree = 100, mtry = 2)

#prediction
pred = predict(model, iris)

library(caret)

confusionMatrix(pred, iris$Species)
