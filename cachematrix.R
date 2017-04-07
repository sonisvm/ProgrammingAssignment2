## makeCacheMatrix returns a list containing four functions. The get and set functions are used to get and set the matrix respectively. The getInverse and setInverse functions are used to get and set the inverse of the matrix respectively. cacheSolve function calculates the inverse of the matrix if not found in cache and sets in cache. It then returns the inverse matrix.

## Used to create a list of functions to get and set matrix and its inverse as well as cache the data.
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	
	get <- function(){
      x
    }
    set <- function(y){
        x <<- y
        inverse <<- NULL
    }
    setInverse <- function(y) {
        inverse <<- y
    }
    getInverse <- function() {
        inverse
    }
    list(setInverse = setInverse, getInverse = getInverse, get = get, set = set)
}


## Returns the inverse of a matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse()
	if(is.null(inv)){
		a <- x$get()
		inv <- solve(a)
		x$setInverse(inv)
	}
	inv
}
