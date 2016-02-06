## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  #set the value of the matrix
  # m set to NULL
  m <- NULL
  
  # store a matrix
  setMatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  # returns the value of the stored matrix
  getMatrix <- function() x
  
  # set the value of the inverse matrix
  mInverse <- function(solve) m <<- solve
  
  # get the value of the matrix
  getInverse <- function() m
  
  # Return a list. Each element of the list is a function
  list(setMatrix = setMatrix, getMatrix = getMatrix, mInverse = mInverse, getInverse = getInverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  #get the  cached value
  m <- x$getInverse()
  
  # if a cached value exists return it
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  # else get the matrix, caclulate the inverse and store it in the cache
  
  data <- x$getMatrix()
  m <- solve(data, ...)
  x$mInverse(m)
  
  # return the inverse
  m
}

