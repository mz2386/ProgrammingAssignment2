## Below are two functions that create an object that stores the values of matrix and caches the inverse of matrix

## Write a short comment describing this function
## This function creates a "matrix" object that is a list containing functions that:
## set the value of matrix; get the value of matrix; set the inverse of matrix; get the inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
imatrix<-NULL
 set<-function(y){
   x<<-y
   imatrix<<-NULL
 }
 get<-function()x
 setinverse<-function(inverse) imatrix<<-inverse
 getinverse<-function() imatrix
 list(set=set,get=get
      setinverse=setinverse,getinverse=getinverse)
}



##This function returns the inverse of the matrix.
##If the inverse has been computed, it retrieves the inverse from the cache
cacheSolve <- function(x, ...) {
imatrix<-x$getinverse()
  if(!is.null(imatrix)){message("getting cached data")
  return(imatrix)}
  data<-x$get()
  imatrix<-solve(data,...)
  x$setinverse(imatrix)
        ## Return a matrix that is the inverse of 'x'
}
