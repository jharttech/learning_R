mario <- readline("Enter votes for Mario: ")
peach <- readline("Enter votes for Peach: ")
bowser <- readline("Enter voted for Bowser: ")

total <- as.integer(mario) + as.integer(peach) + as.integer(bowser)
print(paste("Total votes:",total,sep=" "))
#OR

mario <- as.integer(mario)
peach <- as.integer(peach)
bowser <- as.integer(bowser)

total <- mario + peach + bowser
#OR
total <- sum(mario,peach,bowser)
print(paste("Total votes:",total,sep=" "))

#Note:
  #Data types are called "Storage Modes" in R
  #Some Storage Modes are: as.integer, as.double, as.character
  #sum() function can be used with arrays