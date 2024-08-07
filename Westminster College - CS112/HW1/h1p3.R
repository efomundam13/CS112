# Name: Manny Fomundam
# Homework 1, Problem 3
# Date: 1/19/2024
# Professor: John P Bonomo
# Description: Determine the largest and smallest value of n such that 
# 3^n has an actual value and to Determine the associativity of the 
# exponentiation operator and explain how you determined it.

#a
#maximum_n <- log(.Machine$double.xmax, base = 3)
#minimum_n <- log(.Machine$double.xmin, base = 3)

#b
#The associativity of the exponentiation operator is performed
#right-to-left. I determined it by using an expression at first.
#I used 2^3^2 which solved left-to-right would be 8^2 which equals
#64. If I solved 2^3^2 right-to-left, the answer would be 2^9 which
#would be 512. When I used R to solve it, the answer was 512 so
#therefore the associativity is right-to-left.