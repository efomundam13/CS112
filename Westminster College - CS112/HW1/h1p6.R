# Name: Manny Fomundam
# Homework 1, Problem 6
# Date: 1/19/2024
# Professor: John P Bonomo
# Description: Write a program that takes the number of tickets for children, 
# adults and seniors requested along with the cost of each and returns the 
# total cost of the purchase.

#Function has set defaults for the number of children, adults and seniors and 
# defaults for ticket prices for each group. 
totalprice <- function(nchild = 0, nadult = 0, nsenior = 0, costchild = 5, 
                       costadult = 8, costsenior = 6){
  # Calculates the cost of tickets for each group
  children_total <- nchild * costchild
  adult_total <- nadult * costadult
  senior_total <- nsenior * costadult
  
  #Calculates the total number of tickets and total price
  total_tickets <- nchild + nadult + nsenior
  total_price <- children_total + adult_total + senior_total 
  
  # Prints cost of tickets for each group and total price and total number of
  # tickets.
  cat(paste("Children Total = ", children_total, "\n",
            "Adult Total = ", adult_total, "\n",
            "Senior Total = ", senior_total, "\n"))
  
  cat(paste("Total Price = ", total_price, "\n",
            "Total Tickets = ", total_tickets, "\n"))
  
}

print(totalprice(6,2,1))
print(totalprice(nsenior = 4))
print(totalprice(6,2,1,costchild = 4, costadult = 7, costsenior = 5))
print(totalprice(2,2,costadult = 10))

