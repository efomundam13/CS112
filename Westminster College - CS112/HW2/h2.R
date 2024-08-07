# Name: Manny Fomundam
# Homework 2, Problem 3
# Date: 1/26/2024
# Professor: John P Bonomo
# Write a function isLeapYear(y) which returns
# True if y is a leap year and False otherwise.

isLeapYear <- function(y) {
  # If the year is divisible by 400 and 100, it is a leap year.
  if(y %% 400 == 0 && y %% 100 == 0) {
    return(TRUE)
  }
  # If the year is divisible by 4 but not by 100, it is a leap year.
  else if(y %% 4 == 0 && y %% 100 != 0) {
    return(TRUE)
  }
  # If none of the above conditions are met, it is not a leap year.
  else {
    return(FALSE)
  }
}

# Homework 2, Problem 4
# Description: Write a function dayOfYear(m, d, y) which returns the number of 
# days which have elapsed in year y on day m/d/y.

dayOfYear <- function(m,d,y) {
  day <- 0
  # Check for each month and calculate the day of the year.
  # January
  if(m == 1) {
    if(d > 31) {
      stop('Invalid Date for January')  # January has 31 days, so stop if d > 31.
    }
    else {
      day <- d  # For January, the day of the year is the day itself.
    }
  }
  # February
  else if(m == 2) {
    if(m == 2 && isLeapYear(y) && d == 29) {
      day <- d + 31 # On leap years, February can have 29 days.
    }
    else if(m == 2 && isLeapYear(y) == FALSE && d == 29) {
      stop('Invalid Date in February')  # Stop if it's not a leap year and d is 29.
    }
    else if(d > 29 && isLeapYear(y)) {
      stop('Invalid Date in February during a Leap Year')  # February cannot have more than 29 days, even in leap years.
    }
    else if(d > 28 && isLeapYear(y) == FALSE) {
      stop('Invalid Date in February during a Regular Year')  # In a non-leap year, February cannot have more than 28 days.
    }
    else {
      day <- d + 31  # Add 31 days of January to the day in February.
    }
  }
  # The following else-if blocks repeat the same logic for each month.
  # For each month, check if the day is valid and then add the total days of all previous months to it.
  # March
  else if(m == 3) {
    if(d > 31) {
      stop('Invalid Date for March')
    }
    else {
      day <- d + 59
    }
  }
  # April
  else if(m == 4) {
    if(d > 30) {
      stop('Invalid Date for April')
    }
    else {
      day <- d + 90
    }
  }
  # May
  else if(m == 5) {
    if(d > 31) {
      stop('Invalid Date for May')
    }
    else {
      day <- d + 120
    }
  }
  # June
  else if(m == 6) {
    if(d > 30) {
      stop('Invalid Date for June')
    }
    else {
      day <- d + 151
    }
  }
  # July
  else if(m == 7) {
    if(d > 31) {
      stop('Invalid Date for July')
    }
    else {
      day <- d + 181
    }
  }
  # August
  else if(m == 8) {
    if(d > 31) {
      stop('Invalid Date for August')
    }
    else {
      day <- d + 212
    }
  }
  # September
  else if(m == 9) {
    if(d > 30) {
      stop('Invalid Date for September')
    }
    else {
      day <- d + 243
    }
  }
  # October
  else if(m == 10) {
    if(d > 31) {
      stop('Invalid Date for October')
    }
    else {
      day <- d + 273
    }
  }
  # November
  else if(m == 11) {
    if(d > 30) {
      stop('Invalid Date for November')
    }
    else {
      day <- d + 304
    }
  }
  # December
  else if(m == 12) {
    if(d > 31) {
      stop('Invalid Date for December')
    }
    else {
      day <- d + 334
    }
  }
  else {
    stop('Invalid date')  # If the month is not between 1 and 12.
  }
  
  # Adjust for leap year by adding an extra day if the date is after February in a leap year.
  if(m > 2 && isLeapYear(y)) {
    day <- day + 1
  }
  
  return(day)  # Return the calculated day of the year.
}

# Homework 2, Problem 5
# Description: Write a function daysBetween(m1, d1, m2, d2, y) which returns 
# the number of days between m1/d1/y and m2/d2/y.

daysBetween <- function(m1, d1, m2, d2, y) {
  # Calculate the day of the year for the first date using the dayOfYear function.
  firstDate <- dayOfYear(m1,d1,y)
  
  # Calculate the day of the year for the second date using the dayOfYear function.
  secondDate <- dayOfYear(m2,d2,y)
  
  # Compute the difference in days between the two dates.
  diffInDates <- secondDate - firstDate
  
  # Return the absolute value of the difference.
  # This ensures the function returns a non-negative number regardless of the order of dates.
  return(abs(diffInDates))
}
