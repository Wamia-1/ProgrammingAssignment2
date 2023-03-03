## The functions below give the value of the matrix, set the inverse of it and print it. Else, it gets the inverse from the cache.


## A matrix is formed here and we set the inverse over here.

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(x){
  x <<- y
  m <<- NULL
}
get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)

## If the inverse is already there, it gets the matrix from the cache and skips the computational part.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       
  m <- x$getInverse()
  if(!is.null(m)){
  message("getting cached data")
  return(m)
  }
  matrix <- x$get()
  m <- solve(matrix,...)
  x$setInverse(m)
  m
}
        
