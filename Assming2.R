## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    MatInv <- NULL
    SetValue <- function(y) {
        x <<- y
        MatInv <<- NULL
    }
    GetValue <- function() x
    SetMatInv <- function(solve) MatInv <<- solve
    GetMatInv <- function() MatInv
    list(SetValue=SetValue, GetValue=GetValue, SetMatInv=SetMatInv, GetMatInv=GetMatInv)
}



cacheSolve <- function(x, ...) {
    MatInv <- x$GetMatInv()
    if(!is.null(MatInv)) {
        message("Data already cached, accessing it")
        return(MatInv)
    }
    MyData <- x$GetValue
    MatInv <- solve(MyData)
    x$SetMatInv(Matinv)
    MatInv
}

x = rbind(c(1, -1/4), c(-1/4, 1))
m = makeCacheMatrix(x)
#m$GetValue()
cacheSolve(m)






