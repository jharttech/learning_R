# Read the desired table without reading the commas, with header
votes <- read.table("votes.csv")
View(votes)

# Read the desired table with commas with header
votes <- read.table("votes.csv",sep=",")
View(votes)

# Read the desired table with commas without header
votes <- read.table("votes.csv",sep=",",header=TRUE)
# Shows the table
View(votes)


# Correct Formatting should be as follows
votes <- read.table(
  "votes.csv",
  sep = ",",
  header = TRUE
)
View(votes)

# Using the built in csv reader
votes <- read.csv("votes.csv")
# access table data ex. votes[row, column]
# access all rows ex. votes[,2]
# access all columns ex. votes[2,]
View(votes[2,2])

# Dynamic way to get data from table
View(votes$poll)
View(votes$mail)
View(votes$candidate)

# To see in console type the following into the console
#votes$poll
#votes$mail
#votes$candidate

print(votes$poll[3] + votes$mail[3])
