# Name: Manny Fomundam
# Homework 1, Problem 5
# Date: 1/19/2024
# Professor: John P Bonomo
# Description: Write a program that calculates and return log_n a

logn <- function(a, n) {
  #returns the log function
  return (log(a) / log(n))
}

print(logn(36, 6))
print(logn(6, 36))
print(logn(8,4))