# Name: Manny Fomundam
# Date: 2/23/2024
# Professor: John P Bonomo

#Homework 6, Problem 4
# Write a function longest(lst) which returns the component of list lst with the
# greatest length. You may assume that all components of the list are vectors. 
longest <- function(lst) {
  lengths <- sapply(lst, length)
  lst[[which.max(lengths)]]
}

#Homework 6, Problem 5
#Write a function worldcupresults(teamname) which returns the years that the
#team teamname came in first, second, third or fourth in the World Cup along 
#with which place position they ended up in, using 1 for first place, 2 for 
#second place, etc.

worldcupresults <- function(teamname) {
  # Read the World Cup data from 'world_cups.csv'
  worldCups <- read.csv("world_cups.csv")
  
  # Subset the data for the given team
  teamResults <- subset(worldCups, Winner == teamname | Runners.Up == teamname | Third == teamname | Fourth == teamname)
  
  # Create a data frame with years and positions
  results <- data.frame(Year = teamResults$Year,
                          Position = apply(teamResults[, c("Winner", "Runners.Up", "Third", "Fourth")], 
                                           1, function(x) match(teamname, x)))
  
  # Order the data frame by Year
  results <- results[order(results$Year), ]
  
  return(results)
}