## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matri_inv <- NULL
  
  set_Matriz <- function(t1) {
    x <<- t1
    matri_inv <<- NULL
  }
  get_matriz <- function() x
  set_inv <- function(inv) matri_inv <<- inv
  get_inv <- function() matri_inv
  list(set = set_Matriz, get = get_matriz,
       setinv = set_inv,
       getinv = get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matri_1 <- x$getinv()
  if(!is.null(matri_1)) {
    message("getting cached data")
    return(matri_1)
  }
  data <- x$get()
  matri_1 <- solve(data)
  x$setinv(matri_1)
  matri_1
}
