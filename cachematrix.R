## Put comments here that give an overall description of what your
## functions do

## This function takes the matrix as an input and cache the the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
         inv <- NULL                             
  set <- function(y) 
  {                    
    x <<- y                            
    inv <<- NULL                       
  }
  get <- function() {x}                  
  setinverse <- function(inverse) {inv <<- inverse} 
  getinverse <- function() {inv}                    
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
}


## This function is to inverse the matrix accepted in the function above,or if the matrix has already been inverted then just display it

cacheSolve <- function(x, ...) {
        inv<-x$getinverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinverse(inv)
  inv
}
