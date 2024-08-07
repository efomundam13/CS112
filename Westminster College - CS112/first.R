pdf("exapmle.pdf")
hist(runif(1000)*10)
dev.off

#7 BASIC OPERATIONS FOR ARITHMETICS
# +,-,*,/,^
x = 5 / 3 #Regular Division
y = 5 %/% 3 #Integer Division
z = 3 %% 5 #Remainder Division

print(x)
print(y)
print(z)

countpositive <- function(v) {
  count <- 0
  for (val in v) {
    if (val > 0) {
      count <- count + 1
    }
  }
  return (count)
}

countgreater <- function(v, floor) {
  count <- 0
  for (val in v) {
    if (val > floor) {
      count <- count + 1
    }
  }
  return (count)
}

daynum <- readline('Enter a day number: ')
daynum <- strtoi(daynum)
if(daynum > 1 && daynum < 7) {
  day = 'weekday'
} else {
  day = 'weekend'
}
print(day)

x <- 3
x <- if (a %% 2 == 0) a/2 else 3*a+1

#example switch statement
#dayname to daynumber
daynum <- switch(day, 'Sunday' = 1, 'Monday' = 2, 'Saturday' = 7)

y <- c(8,7,9,6,8)
sum_y <- 0
sum_i <- 0
for (i in 1:length(y)) {
  sum_y = sum_y + y[i]
  sum_i = sum_i + i
  if (sum_y %% sum_i != 0) {
    break
  }
  z <- c(sum_y, sum_i)
  print(z)
}

