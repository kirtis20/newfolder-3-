x = array(720)
y = array(720)

for (i in 0:360)
{
  x[i] = 3*cos(i)
  y[i] = 3*sin(i)
}

for (i in 0:360)
{
  x[i+360] = 5*cos(i)
  y[i+360] = 5*sin(i)
}
 
plot(x,y)
 
 data = data.frame(x,y)
 
 library(dbscan)
 library(sparcl)
 model = dbscan(data, eps = 1.3, minPts = 4)
 plot(x,y,col=model$cluster)
