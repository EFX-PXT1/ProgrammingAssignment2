## Two functions which together provide the ability to store
## a matrix and cache the result of computing its inverse.

## makeCacheMatrix creates an object of 4 functions which are
## used by cacheSolve to store the result of the inverse computation.
## get/set               : get and set the original matrix
## getinverse/setinverse : get and set the inverse matrix result
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(inv) inverse <<- inv
	getinverse <- function() inverse
	list(set = set, get = get,
		 setinverse = setinverse, getinverse = getinverse)
}

## Using the supplied cacheMatrix object as a helper,
## evaluate whether the inverse of a matrix has already been computed.
## If so, return from cache, otherwise compute inverse and cache result.
## Finally return result.
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
