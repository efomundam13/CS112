# Name: Manny Fomundam
# Homework 2, Problem 1
# Date: 1/26/2024
# Professor: John P Bonomo

#(1)
#(a) For what values of n is the following expression TRUE: n %/% 5 == n %% 5?
#The expression is true when n is the first 4 multiples of 6 (6,12,18,24) and 0

#(b) Assuming m is positive, for how many value of n would n %/% m == n %% m be TRUE?
#For the expression to be true, the remainder and the quotient of the division
#of n by m must be equal and it only occurs when n is in the range from 0 and 
#m - 1 which will allow the integer division and remainder yields n. Based on 
#the code above for a positive integer m, there are exactly m values. 
#of n for which n %% m == n %/% m 

#(2) Determine the output of the following sets of code assuming 
#    a=4, b=5 and c=6.
#(a) Output is yes
#(b) Output is oui
#(c) Output is tal vez
#(d) Output is 5
#(e) Output is 7

#(3) Write code that does each of the following:
#(a) If x is not divisible by 3 set a to x and b to 0; otherwise set a to 0 
#    and b to x.
if(x %% 3 != 0) {
  a <- x
  b <- 0
} else {
  a <- 0
  b <- x
}
#(b) Set c to 1 if x is greater than y, to -1 if x is less than y, 
#    or to 0 otherwise.
if(x > y) {
  c <- 1
} else if(x < y) {
  c <- -1
} else {
  c <- 0  
}
#(c) Set d to the fifth element of vector z or to -1 if z has less than 5 
#    elements.
if(length(z) >= 5) {
  d <- z[5]
} else {
  d <- -1
}

#(4)
#Determine the output of the following sets of code.
#(a)
#29

#(b)
#8 1
#15 3
#24 6
#30 10