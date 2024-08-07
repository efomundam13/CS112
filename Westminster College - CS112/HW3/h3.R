# Homework 3, Problem 3
# Function to insert a value into a vector at a specific location
insert <- function(val, x, k) {
  # If the location is out of range, return the original vector
  if (k < 1 || k > length(x) + 1) {
    return(x)
  } else {
    # Otherwise, insert the value at the specified location
    return(c(x[1:(k-1)], val, x[k:length(x)]))
  }
}

# Homework 3, Problem 4
# Modify the findruns method we wrote in class to 
# only consider non-overlapping runs of 1’s
# Function to find non-overlapping runs of 1's in a vector
findRuns <- function(x, k) {
  # Get the length of the input vector
  n <- length(x)
  
  # Initialize an empty vector to store the starting indices of the runs
  runs <- integer(0)
  
  # Initialize a counter to track the current position in the vector
  i <- 1
  
  # Loop over the vector until the end is reached or there are less than k elements left
  while(i <= (n - k + 1)) {
    # If a run of 1's of length k is found at the current position
    if(all(x[i:(i + k - 1)] == 1)) {
      # Add the current position to the runs vector
      runs <- c(runs, i)
      
      # Skip to the end of the current run
      i <- i + k
    } else {
      # If no run is found at the current position, move to the next position
      i <- i + 1
    }
  }
  
  # If any runs were found, return the runs vector
  if(length(runs) > 0) {
    return(runs)
  } else {
    # If no runs were found, return NULL
    return(NULL)
  }
}


# Homework 3, Problem 5
# Function to calculate the length of the Collatz sequence for a given number
collatzSequence <- function(x) {
  # If the input number is less than 1, return NA
  if (x < 1) {
    return(NA)
  }
  
  length <- 1
  # Continue the loop until the number becomes 1
  while (x != 1) {
    # If the number is even, divide it by 2
    # If the number is odd, multiply it by 3 and add 1
    if (x %% 2 == 0) {
      x <- x / 2;
    } else {
      x <- 3 * x + 1
    }
    # Increase the length of the sequence
    length <- length + 1
  }
  # Return the length of the sequence
  return(length)
}

# Homework 3, Problem 6
# Function to find all starting indices of a subsequence in a vector
subSeq <- function(x, y) {
  # Initialize an empty vector to store the indices
  indices <- integer(0)
  # Loop over the vector x
  for (i in 1:(length(x) - length(y) + 1)) {
    # If a subsequence identical to y is found, store its starting index
    if (identical(x[i:(i + length(y) - 1)], y)) {
      indices <- c(indices, i)
    }
  }
  # If no such subsequence is found, return NULL
  # Otherwise, return the vector of indices
  if(length(indices) == 0) {
    return(NULL)
  } else {
    return(indices)
  }
}