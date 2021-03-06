## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL # initialize inv variable
  set <- function(y) {  # set function for matrix
    x <<- y
    m <<- NULL
  }
  get <- function() x # get function for matrix
  setinverse <- function(inverse) m <<- inverse # set function for matrix
  getinverse <- function() m    #get function for the matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse() #get the inverse
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  # Cache the new variable
  x$setinverse(m)
  # Return the inverse
  m
}
