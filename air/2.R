# Load used library
library(dplyr)

# Load the air.RData for data to tidy up
load("air.RData")

# Change the air emissions value to numeric values
air$emissions <- as.numeric(air$emissions)

# Use a pipe to order the data on the emissions values
# in descending order and make it a new air tibble
air <- air |>
  arrange(desc(emissions))

# Save the new air tibble to 2.RData
save(air, file = "2.RData")