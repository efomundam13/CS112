# Name: Manny Fomundam
# Date: 2/9/2024
# Professor: John P Bonomo

# Homework 4, Problem 1
# Write a function multirep(x, y) which returns a new vector which 
# contains x[1] repeated y[1] times, x[2] repeated y[2] times, etc.

multirep <- function(x, y) {
  # Initialize an empty vector to store the result
  result <- c()
  # Loop through each element of x and y
  for (i in 1:length(x)) {
    # Repeat the i-th element of x y[i] times
    repeated <- rep(x[i], y[i])
    # Append the repeated element to the result vector
    result <- c(result, repeated)
  }
  # Return the result vector
  return(result)
}
