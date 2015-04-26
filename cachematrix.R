## The makeCacheMatrix function creates a 
## special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
   
   i <- NULL
   set <- function(y) {
     x <<-
	 i <<- NULL
	 }
	 
	 get function() x
	 setinv <- function(solve) i <<- solve
	 getinv <- function() i
	 list(set = set, get = get, setinv = setinv, getinv = getinv )
}

## The cacheSolve function below will compute the the inverse of the matrix returne by
## the makeCache Matrix function created above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
