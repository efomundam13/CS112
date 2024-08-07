#Name: Manny Fomundam
#Date: March 1, 2023

swap12 <- function(lst) {
  temp <- NULL
  if(length(lst) < 1) {
    return(lst)
  }
  
  temp <- lst[1] 
  lst[1] <- lst[length(lst)]
  lst[length(lst)] <- temp
  
  return(lst)
}

subvector <- function(v, val, width) {
  for(i in v) {
    if(exists(val) == FALSE) {
      return(NULL)
    }
    results <- c(v[val-width:val],v[val+1:val+width])
  }
}


change_df <- function(pop) {
  pop <- file('uspop.txt')
  
  Census <- 
  
  results <- data.frame(pop$Census, pop$est.2019, pop$est.Change)
  results <- results[order(results$est.Change)]
}