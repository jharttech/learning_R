cat("quack!\n")
cat("quack!\n")
cat("quack!\n")

# Use a loop
i <- 3
repeat {
  i <- i - 1
  cat("quack!\n")
  ifelse(i == 0, break, next)
}


# Use While loops
i <- 3
while (i != 0) {
  cat("quack!\n")
  i <- i -1
}

# Use for loop
for (i in c(1,2,3)) {
  cat("quack!\n")
}

#OR
for (i in 1:10){
  cat("quack!\n")
}

#NOTES
  # next ----- this will tell the loop to start over on next iteration
  # break ----  this will tell the loop to stop where it is at