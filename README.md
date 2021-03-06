# About

R Program that implement Unsupervised Learning Method - Clustering on "Snails" dataset.

# Observations

## K-Means Clustering

In order to find out the best value of k, average silhouette width was implemented for k=2 to k=15. Silhouette width provide an estimate of the average distance between clusters with the value of 1 being highest and -1 being lowest. If the value is closer to +1 then the cluster is considered a good cluster. Following is the plot between average shiloutte of observations and the number of clusters (k) :

![image](https://user-images.githubusercontent.com/72771903/113463191-33214b00-9470-11eb-8399-d353caa142d0.png)

The location of maximum was considered as the appropriate number of clusters. The number of clusters suitable for the dataset was chosen to be 15 with 80.5% variability explained by this clustering algorithm. Thus, k=15 is the optimal k-value to obtain a least within sum of squares and high explained variability.

## Hierarchical Clustering - Euclidean and Manhattan distance

Using Hierarchical clustering full dataset with complete linkage with Euclidian dissimilarity measure, we can see that all animal locations spread to different clusters. On the other hand, using the Manhattan distance as the dissimilarity measure, we get different cluster composition with the same number of clusters. For example: With Euclidian distance, 7 observations are spread for Bermuda location while with Manhattan distance, 9 observations are spread over Bermuda. Moreover, cutting the tree at height at 15 gives only 2 clusters while with the Manhattan distance we get 18 clusters. Thus, the dendrogram obtained using Manhattan dissimilarity measure is longer than with Euclidian dissimilarity measure.


**Dendogram with complete linkage method and Euclidean dissimilarity measure**
![image](https://user-images.githubusercontent.com/72771903/113496430-db9ce100-953c-11eb-8f8b-f37c696c18b2.png)


**Dendogram with complete linkage method and Manhattan dissimilarity measure**
![image](https://user-images.githubusercontent.com/72771903/113496463-17d04180-953d-11eb-8436-38b35deb5f5c.png)


