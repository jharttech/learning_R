# Read the csv
votes <- read.csv("votes.csv")


# Get total of each row
votes$poll + votes$mail

# Create new total column in votes.csv
votes$total <- votes$poll + votes$mail

# Save the votes.csv as a new file
write.csv(votes,  "totals.csv") # This can possibly cause issue due to the way
                                # it writes the row names (usually line number)

# Dave the votes.csv as a new file without row names
write.csv(votes, "totals_no_row_names.csv", row.names = FALSE)