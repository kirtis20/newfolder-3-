#q1-single link
#load data
data = read.csv("singleL.csv")

#remove the 1st column
data = data[,-1]

#when matrix is given we find distance this way
dist_data = as.dist(data)

#loading library
library(cluster)

#make the model
model = hclust(dist_data, method="single")

#plotting the dendogram
plot(model, hang = -1)

#using cutree you can find any number of clusters in the dendogram
three = cutree(model,3)
four = cutree(model,4)

#loading library
#sparcl package is for coloured dendogram
library(sparcl)

#to make coloured dendogram
ColorDendrogram(model, three, branchlength = 10)
