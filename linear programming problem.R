install.packages("lpSolve")
library(lpSolve)

objective=c(2,1,4)
const.matrix=matrix(c(-2,4,0,1,2,1,2,0,3),byrow=T,ncol=3)
const.direction=c("<=",">=","<=")
const.rhs=c(4,5,-2)

result=lp("min",objective,const.matrix,const.direction,const.rhs)
result
