# Name: Manny Fomundam
# Date: 2/9/2024
# Professor: John P Bonomo

# Homework 4, Problem 1
# Determine the value of the following expressions. 
# Indicate if any of them result in an error.
#a. 5 -3 1 -10 6 -2 4
#b. 5 8 -10
#c. 5 9 -3 7
#d. 9 6 7
#e. 5 9 -3 1 8 -10 6 7 -2 4
#f. 9 1 8 6 7 -2 4
#g. 1 3 4 7 9
#h. 5 9 7 1 8 -5 6 7 0 4

# Homework 4, Problem 2
# Write a statement that resets y to only those values that have a decimal
# portion less than 0.5.
y <- c(1.6, 2.3, 3.5, 4.0, 5.9)
decimal_part <- y - floor(y)
y <- y[decimal_part < 0.5]
print(y)

# Homework 4, Problem 3
# Write expressions which produce:
#(a) a vector of the names of students who got scores > 90 on exam 1
names_above_90 <- names[exam1 > 90]
#(b) a vector of the names of students who got scores > 70 on both exams
names_above_70_on_both_exams <- names[exam1 > 70 && exam2 > 70]
#(c) a list of exam 2 grades for all Juniors who got > 70 on exam 1
juniors_above_70_exam1 <- year == "jr" & exam1 > 70
exam2_juniors_above_70_exam1 <- exam2[juniors_above_70_exam1]
#(d) a list of the larger of the exam 1 and exam 2 grades for all Sophomore
sophomores <- year == "so"
larger_grades_sophomores <- pmax(exam1[sophomores], exam2[sophomores])