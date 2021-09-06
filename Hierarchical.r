# Reading the snails dataset
snails <- read_xlsx(file.choose())
# Storing the location variable values
snails_loc <- snails$Location
# Scaling the quantitative data
sd.data = scale(snails[2:10])
# Getting the matrix from the scaled data with euclidian dissimilarity measure
data.dist=dist(sd.data)
# Hierarchical clustering for 3 different methods
hc.complete=hclust(data.dist, method="complete")
#Plot dendograms for all three methods
plot(hc.complete, main="Complete Linkage", xlab="", sub="",cex=.9)
abline(h=15, col="red")
# Cutting the tree
hc.clusters=cutree(hc.complete,15)
table(hc.clusters,snails_loc)
