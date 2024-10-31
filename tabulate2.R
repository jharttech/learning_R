votes <- read.csv("votes2.csv")
View(votes)

total_votes <- c()
for (candidate in rownames(votes)) {
  #total_votes[candidate] <- sum(votes[candidate, ])
  #OR
  total_votes <- c(total_votes, sum(votes[candidate,]))
}
#votes$total <- total_votes 

# Use Apply function
apply(votes, MARGIN = 1, FUN = sum)
