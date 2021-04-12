#importing the cluster library
library(cluster)
#reading the snails dataset
snails <- read_xlsx(file.choose())
#converting the location variable to numeric
snails$Location=as.numeric(snails$Location)
#scaling the data
sd.data=scale(snails)
#creating variables to store mean silhouette values and the number of clusters respectively
cluster_ss = vector(,15)
k_values = vector(,15)
k.max = 15
sil <- rep(0, k.max)
#looping through different values of k
for(i in 2:k.max)
{
 #k-means algorithm for k=i
 km.out=kmeans(snails,i,nstart=50)
 ss <- silhouette(km.out$cluster, dist(snails))
 sil[i] <- mean(ss[, 3])
}
#Plot the average silhouette width
plot(1:k.max, sil, type = "b", pch = 19, frame = FALSE, xlab = "Number of clusters k")
abline(v = which.max(sil), lty = 2)
#k-means algorithm with the best value of k
km.final=kmeans(snails,15,nstart=50)
#getting within sum of squares
km.final$tot.withinss
km.final
