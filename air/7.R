# Load used library
library(dplyr)

# Load the original air.RData for data that needs tidying
load("air.RData")

# Using pipes, rename the level_1 column to source,
# group first by source, then by pollutant
# summarize the emissions for each source and pollutant
# ungroup the data, then arrange based on source in alpha order
# and make it a new air tibble
air <- air |>
  rename(source = level_1) |>
  group_by(source, pollutant) |>
  summarize(emissions = sum(emissions)) |>
  ungroup() |>
  arrange(source)

# Save the new air tibble as 7.RData
save(air, file = "7.RData")