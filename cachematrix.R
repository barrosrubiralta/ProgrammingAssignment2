## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) { # 
  m <- NULL #
  set <- function(y) {
    x <<- y #
    m <<- NULL #
  }
  get <- function() x #
  #setmean <- function(mean) m <<- mean #
  setsolve<-function(solve) m <<- solve
  #getmean <- function() m #
  getsolve<-function() m
  list(set = set,get = get,setsolve = setsolve,getsolve = getsolve)#Here is the other part of the "magic" in the operations of the makeVector() function. The last section of code assigns each of these functions as an element within a list(), and returns it to the parent environment.
  
}




cacheSolve <- function(x, ...) {
        
  m <- x$getsolve() # 
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()#.
  m <- solve(data)
  x$setsolve(m)
  m
}
