m1=matrix(c(2,4,6,8,1,3,2,4,3,8,5,7,2,6,3,9),byrow = T,ncol=4)

m1


lu_decomposition<-function(mat){
  m1=mat
  r=nrow(m1)
  l=diag(r)
  
  for(i in 1:(r-1)){
    
    for(j in (i+1):r){
      multiplier=m1[j,i]/m1[i,i]
      m1[j,]=m1[j,]-multiplier*m1[i,]
      l[j,i]=multiplier
    }
    
  }
  return(list(upper=m1,lower=l))
}


L=lu_decomposition(m1)$lower
U=lu_decomposition(m1)$upper

L%*%U
