## The makeCacheMatrix function creates a 
## special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
   
   i <- NULL
   set <- function(y) {
     x <<- y
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
		
		inv = x$getinv()
		
		##check to see if inv is not null; it is has already been calculated
		#if inv is not null send message and return inv
		if (!is.null(inv)) {
		
		    message ("getting cached data")
			return(inv)
		}
		
		## if inv is null, calculate the inverse
		
		inv.data = x$get()
		inv = solve(inv.data,...)
		
		## now set the value of the inverse in the cache using the setinv() function
		x$setinv()
		
		return(inv)
		
		
		
}
