# Name: Manny Fomundam
# Homework 1, Problem 4
# Date: 1/19/2024
# Professor: John P Bonomo
# Description: Write a program that enters three sides of a 
# triangle and outputs the area of the triangle using Heron’s formula.

trianglearea <- function(a, b, c){
  # Calculates s
  s = (a + b + c) / 2
  
  # Calculates area from heron's formula
  area <- sqrt(s*(s-a)*(s-b)*(s-c))
  #Prints out the area
  cat("Area: ", area, "\n")
}

print(trianglearea(11, 24, 26))
print(trianglearea(4, 6, 3))
print(trianglearea(11.3, 11.9, 13.6))
print(trianglearea(375, 375, 590))
print(trianglearea(8.2, 14.6, 19.3))