## This function calculates the inverse of matrix using the results of the value of a matrix that is stored in a cashe
## functions set the value of matrix (m), get the value of the matric(m),

## the function calculates the value of matrix (x)

makeCacheMatrix <- function(x = matrix()) {

   m <- NULL
   
    set <- function(y) {
        
        x <<- y
       
        
       m <<-NULL

    }
        
      get <- function() x
    setmatrix <- function(matrix, r, c) m <<- matrix
    getmatrix <- function()m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)

}


## this function calculates the inverse of the matrix by first of all checking out to determine whether the vale of the matrix is already stored in the cashe, if not then it calculates the value of the matric and then the inverse of the matrix

cacheSolve <- function(x, ...) {
   <- x$getmatrix()
    
    if(!is.null(m)) {
        
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m
        ## Return a matrix that is the inverse of 'x'
}
