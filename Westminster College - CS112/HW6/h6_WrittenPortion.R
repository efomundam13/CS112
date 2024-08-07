# Name: Manny Fomundam
# Date: 2/23/2024
# Professor: John P Bonomo

# Homework 6, Problem 1
# Indicate whether each of the following expressions evaluates to a list, 
# a vector or an error. If an expression evaluates to a vector shown the vector.
# If it evaluates to a list specify the number of components in the list.
# a. x[1]
    "a" "e" "i" "o" "u"
# b. x[[1]]
    "a" "e" "i" "o" "u"
# c. x[1:2]
    "a" "e" "i" "o" "u"
    1 3 2
# d.x[x[[2]]]
    "a" "e" "i" "o" "u"
    5  3  1 -1 -3 -5
    1 3 2
# e.x[x[[2]]][2]
    5  3  1 -1 -3 -5
# f.x[[1]][x[[2]]]
    "a" "i" "e"

#Homework 6, Problem 2
# a. Show how you can assign the names vowels, vector and sequence to the 
# components of the list x in the previous problem.
names(x) <- c("vowels", "vector", "sequence")

# b. Which two of the following return the same value: x[1], x[[1]], x["vowels"]
x[1] and x["vowels"]

# c. Show two different ways to access the "e" in the first component
x[1][[1]][2] and x[["vowels"]][2]

#Homework 6, Problem 3
# a. Show how to create a data frame called pacolleges which stores this data.
pacolleges <- data.frame(Name = c("Allegheny College", "Bucknell University", 
                                  "Dickinson College", "Grove City College", 
                                  "Mercyhurst University",
                                  "Washington & Jefferson College", 
                                  "Westminster College"),
                         Location = c("Meadville", "Lewisburg", "Carlisle", 
                                      "Grove City", "Erie", "Washington", 
                                      "New Wilmington"),
                         Enrollment = c(1786,3624,2414,2271,3627,1460,1582),
                         Founded = c(1815, 1846, 1773, 1876, 1926, 1781, 1852),
                         ReligiouslyAffiliated = c("T","F","F","T","T","F","T"))

# b. Using pacolleges show how you would get a list of those schools with 
# enrollments greater than 2500.
pacolleges[pacolleges$Enrollment > 2500, ]

# c. Using pacolleges show how you would get a list of those schools founded 
# in the 1800’s
pacolleges[pacolleges$Founded >= 1800 & pacolleges$Founded < 1900, ]