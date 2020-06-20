cacheSolve <- function(m, ...) {
        inv <- m$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- m$get()
        inv <- solve(mat, ...)
        m$setInverse(inv)
        inv
}