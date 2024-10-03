# Get data from an url
url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"

# Assign the csv to a data frame called voters
voters <- read.csv(url)

#View(voters)

# To find out how many rows
nrow(voters)

# To find out how many columns
ncol(voters) 

# Find data bases on column name
# In this case it is voter habits from a column called voter_category
voters$voter_category

# Find unique values (options for answer) in above column data
unique(voters$voter_category)

# Find responses for question 22
voters$Q22

# Find unique values (options for answer) in above column data
unique(voters$Q22)

# Find responses to question 21
voters$Q21

# Find unique responses to question 21
unique(voters$Q21)

# Factor function can be used to help see categories or responses in plain English
# Basic factor
factor(voters$Q21)

# Factor with labels
factor(
  voters$Q21,
  labels = c("?", "Yes", "No", "Unsure/Undecided")
)

# If there is a category or response that maybe invalid you can use exclude
factor(
  voters$Q21,
  labels = c("Yes","No","Unsure/Undecided"),
  exclude = c(-1)
)

# NOTE
  # Use a codebook on big data


