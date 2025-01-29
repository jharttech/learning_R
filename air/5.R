# Load used librarys
library(stringr)
library(dplyr)

# Load original air.RData data for Tidying
load("air.RData")

# Change the emissions values to numeric
air$emissions <- as.numeric(air$emissions)

# Using pipes, group the data on the county,
# find the highest emissions row for each county,
# then ungroup the data and make it a new air tibble
air <-air |>
  group_by(county) |>
  slice_max(order_by = emissions) |>
  ungroup()

# Save the new air tibble as 5.RData
save(air, file = "5.RData")