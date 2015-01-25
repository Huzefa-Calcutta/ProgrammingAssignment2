## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 # initialize the inverse matrix value
 inv_matrix <- NULL
# set the value of the matrix
set_matrix <- function(y) {
x <<- y
inv_matrix <<- NULL
}
# get the value of the matrix
get_matrix <- function() x
# set the value of the inverse
set_inverse <- function(inv_input) inv_matrix <<- inv_input
# get the value of the inverse
get_inverse <- function() inv_matrix
# return a list of all the above functions
list(set_matrix = set_matrix, get_matrix = get_matrix,
set_inverse = set_inverse,
get_inverse = get_inverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
     # check if the inverse is already cached,
# if so, we get the inverse from the cache directly
inv_matrix <- x$get_inverse()
if(!is.null(inv_matrix)) {
message("getting cached inverse")
return(inv_matrix)
}
# else, we first get the matrix
data <- x$get_matrix()
# and calculate the inverse
inv_matrix <- solve(data, ...)
# next, cache the inverse of the matrix
x$set_inverse(inv_matrix)
# and finally, return the result
inv-matrix
}
