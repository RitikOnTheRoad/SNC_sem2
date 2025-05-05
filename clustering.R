#kmeans clustering
x=c(10.71,11.64,0.91,8.20,7.07,4.82,7.38,5.56,5.01,5.62)
result=kmeans(x,2)

clusters=list(c(),c())


for(i in 1:length(x)){
    if(result$cluster[i]==1){
      clusters[[1]]=append(clusters[[1]],x[i])
    }
  else{
    clusters[[2]]=append(clusters[[2]],x[i])
  }
  
}

clusters

result$centers

library(MASS)
data("swiss")
head(swiss)
rows=rownames(swiss)

#kmeans
results=kmeans(swiss,3)
cluster_vector=results$cluster
cluster_vector

cluster1=c()
cluster2=c()
cluster3=c()
for(i in 1:length(cluster_vector)){
  if(cluster_vector[i]==1){
    cluster1=c(cluster1,rows[i])
  }
  else if(cluster_vector[i]==2){
    cluster2=c(cluster2,rows[i])
  }
  else{
    cluster3=c(cluster3,rows[i])
  }
}
cluster1
cluster2
cluster3

#hirarchical clustering
distance_matrix=dist(swiss)
plot(hclust(distance_matrix))
