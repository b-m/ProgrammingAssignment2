## Coursera R Programming Course - Progg. assignment 2

## Function generates a matrix that caches its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setinv <- function(inverse) {
    inv <<- inverse
  }
  
  getinv <- function() {
    inv
  }
  
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
  # Attempt to get inverse 
  inv <- x$getinv()
  
  # If cached inverse avaiable
  if(!is.null(inv)) {
    return(inv)       # return inverse and end function
  }
  
  # Otherwise
  mat <- x$get()
  inv <- solve(mat)
  x$setinv(inv)
  inv
}

