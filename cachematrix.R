## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        cashed <- x
        set_cashed <- function(){
                cashed <<- solve(x)
        }
        get_cashed <- function(){
                cashed
        }
        list(set_cashed = set_cashed, get_cashed = get_cashed)

}

z <- makeCacheMatrix(A)
z$get_cashed()

t <- cacheSolve(A, z)
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(A = z$get_cashed){
                
        }
}
makeCacheMatrix(23)

solve()
?det
A <- matrix( c(5, 1, 0,
               3,-1, 2,
               4, 0,-1), nrow=3, byrow=TRUE)
B <- solve(A)
C <- solve(B)


