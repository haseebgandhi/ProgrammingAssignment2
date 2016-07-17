## Put comments here that give an overall description of what your
## functions do

## set the value of matrix, get the value of matrix, set the inverse of matrix and get the inverse of matrix

makeCacheMatrix<- function(x=matrix()){
  i<- NULL
  set <- function(y){
    x<<-y
    i<<- NULL
    
  }
  get <-function() x
  setinv<- function(inv) i<<-inv
  getinv<- function() i
  list(set=set, get=get, setinv=setinv, getinv=getinv)
  
  
}



## returns the inverse matrix from cache if exist else makes one and return


cacheSolve<- function(x,...){
  i<-x$getinv()
  if(!is.null(i)){
    message("getting cached data")
    return (i)
    
  }
  data<-x$get()
  i<- solve(data)
  x$setinv(i)
  i
}
