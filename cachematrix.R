## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inve <<- NULL
  + set <- function(y){
    + x<<- y
    + inve <<- NULL
    + }
  + get<- function()x
  + setinve <- function(inverse)inve<<- inverse
  + getinve <- function()inve 
  + list(set=set,
         + get=get,
         + setinve=setinve
         + , getinve =getinve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      inve <- x$getinverse()
  + if(!is.null(inve)){
    + message("getting cached data")
    + return(inve)
    + }
  + mat <- x$get()
  + inve <- solve(mat,...)
  + x$setinverse(inve)
  + inve
}
