## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  set <- function(y){
    X <<-y
    inverseMatrix <- NULL
  }
  get <- function() X
  setInverseMatrix <- function(inverse) inverseMatrix <<- inverse
  getInverseMatrix <- function() inverseMatrix
  list(set = set, get = get, setInverseMatrix=setInverseMatrix, getInverseMatrix=getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverseMatrix
  if(!is.null(m))
  {
    message("getting cached matrix inverse")
    return (m)
  }
  
  matrixData <- x$get()
  m <- solve(matrixData)
  x$setInverseMatrix(m)
  m
}
