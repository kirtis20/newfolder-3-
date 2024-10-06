#q1
#load data
data = read.csv('dataset1.csv')

#remove any null values
new_data = na.omit(data)
new_data = new_data[,-1]

#create a model
model = kmeans(new_data, 3)

model$cluster
model$iter
model$centers
model$withinss
model$size

library(ggplot2)

plot(new_data, col=model$cluster)

library(ggplot2)

ggplot()+geom_point(data =new_data, mapping = aes(x=new_data$x, y=new_data$y, colour=as.character(model$cluster)))

#q2
data = read.csv('exam1.csv')
new_data = data[,-1]
model = kmeans(new_data, 8)
model$size

# Add the cluster assignments to the original data
data$Cluster = model$cluster

result = data[, c('rollno', 'Cluster')]

library(dplyr)  # Make sure dplyr is loaded

# Assuming you already have 'result' with columns 'RollNo' and 'Cluster'
# Filter for cluster number 6
max_cluster = result %>% filter(Cluster == 6)

#q3
data1 = iris
data1 = data1[,-5]
data1 = data1[,-2]
data1 = data1[,-3]

model1 = kmeans(data1, 3)
plot(data1, col=model1$cluster)
