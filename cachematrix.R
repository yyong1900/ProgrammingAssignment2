## Assignment to store and retrieve matrixes and its corresponding inverse matrixes
## the values of the inverse is cached should it be called more than once


## creating a matrix object that stores the content of said matrix, and also the inverse of it
## should it be called more than once

makeCacheMatrix <- function(x = matrix()) {
		iM <- NULL
        set <- function(y) {
				x <<- y
                im <<- NULL
        }
        get <- function() x
        setinvMatrix <- function(IM) 
		{
			iM <<- IM
		}	
        getinvMatrix <- function() 
		{
			iM
		}
        list(set = set, get = get,
             setinvMatrix = setinvMatrix,
             getinvMatrix = getinvMatrix)
}


## if the inverse is called once, it will be computed
## if its called more than once, it retrieves the cached value and get returned

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		IM <- x$getinvMatrix()
        if(!is.null(IM)) {
                message("getting cached data")
                return(IM)
        }
        data <- x$get()		
        IM <- solve(data, ...)
        x$setinvMatrix(IM)
        IM
}
