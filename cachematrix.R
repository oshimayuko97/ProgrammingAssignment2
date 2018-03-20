## In the following functions, 
## a list of an original matrix and its cached matrix is created.

makeCacheMatrix <- function(x = matrix()) {
  set <- x
  get <- x
  matrices <- list(set = set, get = get)
}
matrices <- makeCacheMatrix(x)


## Using the list created above, I firstly check whether the two matrices
## are identical(if so, inversion has not occurred). If not inversed, the
## matrix will be inversed and returned to the user.

cacheSolve <- function(matrices) {
  m <- matrices$get
  if(identical(matrices$set,matrices$get)) {
    message("getting cached data")
    return(solve(m))
  }else{
    return(m)
  }
}
