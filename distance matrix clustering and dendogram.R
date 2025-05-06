distance_matrix=matrix(c(0,5,10,15,20,5,0,5,10,15,10,5,0,5,10,15,10,5,0,5,20,15,10,5,0),byrow = T,ncol=5)
distance_matrix=as.dist(distance_matrix) #convert raw matrix to dist object

distance_matrix
d=hclust(distance_matrix,method = "complete")
plot(d)
