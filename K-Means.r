#Importing the cluster library
library(cluster)
#Reading the snails dataset
snails <- read_xlsx(file.choose())
#Converting the location variable to numeric
snails$Location=as.numeric(snails$Location)
#Scaling the data
sd.data=scale(snails)
#Ceating variables to store mean silhouette values and the number of clusters respectively
cluster_ss = vector(,15)
k_values = vector(,15)
k.max = 15
sil <- rep(0, k.max)
#Looping through different values of k
for(i in 2:k.max)
{
 #K-means algorithm for k=i
 km.out=kmeans(snails,i,nstart=50)
 ss <- silhouette(km.out$cluster, dist(snails))
 sil[i] <- mean(ss[, 3])
}
# Plot the average silhouette width
plot(1:k.max, sil, type = "b", pch = 19, frame = FALSE, xlab = "Number of clusters k")
abline(v = which.max(sil), lty = 2)
# K-means algorithm with the best value of k
km.final=kmeans(snails,15,nstart=50)
# Getting within sum of squares
km.final$tot.withinss
km.final
