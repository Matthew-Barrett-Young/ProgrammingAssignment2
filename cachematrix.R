## Put comments here that give an overall description of what your
## functions do

## This function takes an input, x, that is a matrix. The function then
##      creates a null variable to later store the inverse and creates four
##      functions to be used later in cacheSolve.

makeCacheMatrix <- function(x = matrix()) {
        inverse_cached <- NULL                 #Initializes inverse variable         
        
        set_matrix <- function(new_matrix){    #This function assigns the new 
                # matrix to parent environment
                # and wipes the old inverse
                inverse_cached <<- NULL
                x <<- new_matrix
        }
        get_cached <- function(){              #This function returns inverse_cached
                return(inverse_cached)
        }
        set_inverse <- function(solved_matrix){#This function sets the inverse of 
                # to x to inverse_cached
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
## This function utilizes the environment and list from makeCacheMatrix
##      that is passed in an object. The function then either solves and
##      returns the inverse or pulls the inverse that was cached already.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$get_cached()              #Pull the cached inverse
        
        if(!is.null(inverse)) {                #Checks if inverse has already been solved                
                print("Retrieving cached inverse.")
                return(inverse)
        }
        else {                                 #If the inverse hasn't been solved then
                # the function solves for the inverse and
                # stores it in the cache
                print("Calculating inverse of matrix.")
                original_matrix <- x$get_matrix()
                solved_matrix <- solve(original_matrix)
                x$set_inverse(solved_matrix)
                
                return(solved_matrix)
        }
}
