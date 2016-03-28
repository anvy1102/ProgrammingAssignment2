## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# The function return the list of function to assign data and result of matrix

makeCacheMatrix <- function(x = matrix()) {
    res <- NULL
    getData <- function() x
    setData <- function(value) {
        #assign value for the matrix, and reset the result
        x <<- value 
        res <<- NULL
    }
    setRes <- function(value) res <<- value
    getRes <- function() res
    list(setData, getData, setRes, getRes)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inverse <- x$getRes()
    if (!is.null(inverse)) {
        message('getting cached data')
        return(inverse)
    }
    data <- x$getData()
    inverse <- solve(data)
    x$setRes(inverse)
    
    ## Return a matrix that is the inverse of 'x'
    inverse    
}
