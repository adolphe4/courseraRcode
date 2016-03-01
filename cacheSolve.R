cacheSolve <- function(matx, ...) {
        
        inv_in = matx$getinverse()
        if(!is.null(inv_in)) {
                message("getting cached data")
                #print(inv_in) 
                return(inv_in)
        }
        mat.data <- matx$get()
        inv_in <- solve(mat.data,...)
        matx$setinverse(inv_in)
        return(inv_in)
}

