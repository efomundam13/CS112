# Name: Manny Fomundam
# Date: February 16, 2024
# Professor: John Bonomo

#Exam 1 Lab, Problem 1
seqlength <- function(start, stop) {
  if(stop < start) {
    return(NULL)
  }
  
  v <- c()
  
  for(i in start:stop) {
    if (start %% 2 == 0) {
      start <- start / 2;
    } else {
      start <- 3 * start + 1
    }
    v <- c(start)
    start <- start + 1
  }
  return(max(v))
}


#Exam 2 Lab, Problem 2
taxbracket <- function(income, status = "single") {
  if(status == "single") {
    if(income <= 11000) {
      return('10%')
    }
    else if(income >= 11001 && income <= 44725) {
      return('12%')
    }
    else if(income >= 44726 && income <= 95375) {
      return('22%')
    }
    else {
      return(NA)
    }
  }
  else if(status == "married") {
    if(income <= 23200) {
      return('10%')
    }
    else if(income >= 23201 && income <= 94300) {
      return('12%')
    }
    else if(income >= 94301 && income <= 201050) {
      return('22%')
    }
    else {
      return(NA)
    }
  }
  else {
    return(NA)
  }
}