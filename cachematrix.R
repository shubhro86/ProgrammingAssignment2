## cacheSolve function accepts a matrix and checks if its inverse has already been calculated in makeCacheMatrix function.
## If yes it gets the value of the Inverse using getInverse else it sets the inverse using setInverse()

## Created getter and setter functions to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get,
             setmean = setInverse,
             getmean = getInverse)
}


## Takes in a matrix and checks if the inverse already exists in the cache. If yes it gets the Inverse value using getInverse() else it saves inverse to cache using setInverse()

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		 m <- x$getInverse()
18     if(!is.null(m)) {
19         message("getting cached data")
20         return(m)
21     }
22     data <- x$get()
23     m <- solve(data, ...)
24     x$setInverse(m)
25     m
}
