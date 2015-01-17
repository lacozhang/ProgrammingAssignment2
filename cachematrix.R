## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## retuning a object with four different functions.
makeCacheMatrix <- function(x = matrix()) {

	inversionMatObj <- NULL

	set <- function(matObj){
		x <<- matObj
		inversionMatObj <<- NULL
	}

	get <- function() x

	setinverseion <- function(invMatObj){
		inversionMatObj <<- invMatObj
	}

	getinversion <- function() inversionMatObj

	list(set = set, get=get, setinverse=setinverseion, getinverse=getinversion)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        invObj <- x$getinverse()
        if(!is.null(invObj)){
        	message('get cached inverse of matrix')
        	return(invObj)
        }

        dat <- x$get()
        invObj <- solve(dat)
        x$setinverse(invObj)
}
