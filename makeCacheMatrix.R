
makeCacheMatrix <- function(matx=matrix()) {
        
        inv_in <- NULL
        
        set <- function(y){
                matx <<- y
                inv_in <<- NULL
                
        }
        get <- function () matx
        setinverse = function(inverse) inv_in <<- inverse
        getinverse = function() inv_in
        
        list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)
}