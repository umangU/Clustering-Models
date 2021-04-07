#reading the snails dataset
snails <- read_xlsx(file.choose())
#storing the location variable values
snails_loc <- snails$Location
#scaling the quantitative data
sd.data = scale(snails[2:10])
#getting the matrix from the scaled data with euclidian dissimilarity measure
data.dist=dist(sd.data)
#hierarchical clustering for 3 different methods
hc.complete=hclust(data.dist, method="complete")
#plot dendograms for all three methods
plot(hc.complete, main="Complete Linkage", xlab="", sub="",cex=.9)
abline(h=15, col="red")
#cutting the tree
hc.clusters=cutree(hc.complete,15)
table(hc.clusters,snails_loc)
