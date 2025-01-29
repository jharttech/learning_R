# Load used library
library(dplyr)

# Load the original air.RData data for tidying
load("air.RData")

# Using pipes, group the data on pollutants,
# summarize the emissions after totalling the emissions for
# each pollutant, ungroup the data, then arrange the data
# based on the emissions value in descending order and make
# it a new air tibble
air <- air |>
  group_by(pollutant) |>
  summarize(emissions = sum(emissions)) |>
  ungroup() |>
  arrange(desc(emissions))

# Save the new air tibble as 6.RData
save(air, file = "6.RData")