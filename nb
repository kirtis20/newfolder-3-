#load data
data = iris

#SHUFFLING
ind = sample(1:nrow(data), size = 0.9*nrow(data), replace = FALSE)

#creating training data
train_data = data[ind,]

#creating test data
test_data = data[-ind,]

#load library e1071
library(e1071)

#implementation of Naive Bayes theorem
model = naiveBayes(Species~., data = train_data)

avgd = train_data[train_data$Species == "setosa",]
avg = mean(avgd$Sepal.Length)

#remove species column from test data
test_datalabel = test_data$Species
test_data = test_data[,-5]

#prediction
result = predict(model, test_data)

#confusion matrix
table(result, test_datalabel)
