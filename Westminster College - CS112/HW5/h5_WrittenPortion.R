# Name: Manny Fomundam
# Date: 2/16/2024
# Professor: John P Bonomo

#Homework 5, Problem 1
#Give R command(s) to create specific matrices:
#a.
numbers <- c(1,6,2,3,7,8)
matrix(numbers, nrow = 2, byrow = TRUE)
#b.
numbers <- c(4,9,14,19)
matrix(numbers, nrow = 4, byrow = TRUE)
#c.
numbers <- c(1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1)
matrix(numbers, nrow = 5, byrow = TRUE)
#d.
numbers <- c(1,2,3,4,1,2,3,4,1,2,3,4)
matrix(numbers, nrow = 2, byrow = TRUE)

#Homework 5, Problem 2
#Based on the R statements, determine the
#results of the following calls to apply
#a.
#   [1][2][3]
#[1] 20 12 25
#[2] 64 40 80

#b.
#   [1][2][3][4]
#[1] 38 12 22 20
#[2] 64 75 80 40

#c.
#         [1]   [2]    [3]
#[1] 1.000000 0.950 0.7500
#[2] 0.859375 0.300 0.9375
#[3] 0.343750 0.725 1.0000
#[4] 0.312500 1.000 0.3125

#d.
#        [1]       [2]    [3]   [4]
#[1] 1.00000 0.7333333 0.2750 0.500
#[2] 0.59375 0.1600000 0.3625 1.000
#[3] 0.93750 1.0000000 1.0000 0.625