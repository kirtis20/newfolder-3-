#q2-complete link
#load data
data1 = read.csv("singleL2.csv")

labelss = data1[,1]
#remove the 1st column
data = data1[,-1]

dist_mat = dist(data, method = "manhattan")

#loading library
library(cluster)

#make the model
model = hclust(dist_mat, method="complete")

#plotting the dendogram
plot(model, hang = -1, labels = labelss)

#tells which point merged when and with whom
model$merge

#tells the height at which each cluster was formed
model$height

#using cutree you can find any number of clusters in the dendogram
three = cutree(model,3)
four = cutree(model,4)

#loading library
#sparcl package is for coloured dendogram
library(sparcl)


#to make coloured dendogram
ColorDendrogram(model, three, branchlength = 10)
