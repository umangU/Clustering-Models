# About

R Program that implement Unsupervised Learning Method - Clustering on "Snails" dataset.

## K-Means Clustering

In order to find out the best value of k, average silhouette width was implemented for k=2 to k=15. Silhouette width provide an estimate of the average distance between clusters with the value of 1 being highest and -1 being lowest. If the value is closer to +1 then the cluster is considered a good cluster. Following is the plot between average shiloutte of observations and the number of clusters (k) :

![image](https://user-images.githubusercontent.com/72771903/113463191-33214b00-9470-11eb-8399-d353caa142d0.png)

The location of maximum was considered as the appropriate number of clusters. The number of clusters suitable for the dataset was chosen to be 15 with 80.5% variability explained by this clustering algorithm. Thus, k=15 is the optimal k-value to obtain a least within sum of squares and high explained variability.
