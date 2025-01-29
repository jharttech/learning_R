# Load used library
library(dplyr)

# Load the original air.RData for data to tidy
load("air.RData")

# Set the emissions values to numeric
air$emissions <- as.numeric(air$emissions)

# Use pipes to arrange the data based on the emissions
# value in descending order, then filter by the county I want,
# then make it a new air tibble
air <- air |>
  arrange(desc(emissions)) |>
  filter(county == "OR - Lane")

# Save the new air tibble to 4.RData
save(air, file = "4.RData")