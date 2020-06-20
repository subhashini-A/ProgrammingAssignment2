makeCacheMatrix <- function(m = matrix()) {
        inv <- NULL
        set <- function(y) {
                m <<- y
                inv <<- NULL
        }
        get <- function() m
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}