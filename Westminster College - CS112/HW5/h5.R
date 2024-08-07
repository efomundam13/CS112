# Name: Manny Fomundam
# Date: 2/16/2024
# Professor: John P Bonomo

#Homework 5, Problem 4
#Write a function isSquare(m) which returns
#TRUE if the matrix m is a square matrix

# Function to check if a matrix is square
isSquare <- function(m) {
  if (is.matrix(m) && nrow(m) == ncol(m)) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

#Homework 5, Problem 5
#Write a function interleave(m1, m2) which takes two square matrices of the
#same size and returns a matrix where the rows of m1 are interleaved with the 
#rows of m2, starting with the first row of m1

# Function to interleave two square matrices of the same size
interleave <- function(m1, m2) {
  if (isSquare(m1) && isSquare(m2) && nrow(m1) == nrow(m2)) {
    return(rbind(m1, m2))
  } else {
    return(NULL)
  }
}

#Homework 5, Problem 6
#Write a function embed(m, d) which creates a new matrix formed by surrounding
#matrix m with a top and bottom row and a left and right column of d’s

# Function to embed a matrix with d's
embed <- function(m, d = 0) {
  r <- nrow(m)
  c <- ncol(m)
  newMatrix <- matrix(d, nrow = r + 2, ncol = c + 2)
  newMatrix[2:(r + 1), 2:(c + 1)] <- m
  return(newMatrix)
}

#Homework 5, Problem 7
#Write a function largestfirst(m, dim) which returns a new matrix as follows:
#if dim == 1 it finds the row with the highest sum of the absolute values in the 
#row and moves it to become the first row in the matrix. If there are two or 
#more rows with the same highest total they should all be moved to the top of 
#the array (in rows 1, 2, etc); if dim == 2 you should do the same thing but 
#this time with the columns.

# Function to move the row or column with the highest sum of absolute values to the top
largestfirst <- function(m, dim) {
  # If dim is not 1 or 2, return NULL
  if (dim != 1 && dim != 2) {
    return(NULL)
  }
  
  # If dim is 1, sort rows based on the sum of absolute values
  if (dim == 1) {
    total <- rowSums(abs(m))
    # Find the rows with the maximum sum
    maxRows <- which(total == max(total))
    # If there are more than two such rows, move them to the top
    if (length(maxRows) > 2) {
      m <- rbind(m[maxRows, ], m[-maxRows, ])
    } else {
      m <- m[order(-total), ]
    }
  } 
  # If dim is 2, sort columns based on the sum of absolute values
  else if (dim == 2) {
    total <- colSums(abs(m))
    m <- m[, order(-total)]
  }
  
  return(m)
}
