## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse_cached <- NULL                 #Initializes inverse variable         
                                               
        set_matrix <- function(new_matrix){    #This function assigns the new 
                                               # matrix to parent environment
                                               # and wipes the old inverse
                inverse_cached <<- NULL
                x <<- new_matrix
        }
        get_cached <- function(){              #This function returns cached
                return(inverse_cached)
        }
        set_inverse <- function(solved_matrix){#This function sets inverse to 
                                               # inverse_cached
                inverse_cached <<- solved_matrix
        }              
        get_matrix <- function() {             #This function returns the 
                                               # original matrix
                return(x)
        }
        list(get_matrix = get_matrix,
             set_inverse = set_inverse,
             set_matrix = set_matrix,          
             get_cached = get_cached)

}
z
z <- makeCacheMatrix(A)

z$get_cached()
z$set_matrix(A)
z$get_matrix()
B <- z$set_inverse(solve(A))
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        print(x$inverse_cached)
        if(!is.null(x$inverse_cached)) {
                print("Retrieving cached inverse.")
                return(x$inverse_cached)
        }
        else {
                print("Calculating inverse of matrix.")
                original_matrix <- x$get_matrix()
                solved_matrix <- solve(original_matrix)
                x$set_inverse(solved_matrix)
                print(x$inverse_cached)
                
                return(solved_matrix)
        }
}
cacheSolve(z)
z$get_cached()
z$inverse_cached
makeCacheMatrix(23)

solve()
?det
A <- matrix( c(5, 1, 0,
               3,-1, 2,
               4, 0,-1), nrow=3, byrow=TRUE)
B <- solve(A)
C <- solve(B)


