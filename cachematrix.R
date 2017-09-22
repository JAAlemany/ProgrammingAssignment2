## Put comments here that give an overall description of what your
## functions do.

## Write a short comment describing this function - This "function" is being created from exsisting functions that created a matrix:
"makeVector", "cacheVector" from supplied code. The below 2 functions are: 1) used to create the inverse of the matrix, and have an assigned value
in a different enviornment (hence the <<- operator; 
makeCacheMatrix <- function(x = matrix()) { ##name of matrix function
 inv = NULL ##
  set = function(y) { 
    x <<- y ## the <<- operator is used to # use `to assign a value to an object in an environment, but different from the current one 
    inv <<- NULL 
  }
  get = function() x
  setinv = function(inverse) inv <<- inverse 
  getinv = function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}



## Write a short comment describing this function - 2) this functionis able to cache computes the inverse of the “matrix” returned by 
"makeCacheMatrix".
 ## Return a matrix that is the inverse of 'x'
           
cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}
