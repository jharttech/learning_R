# Load the used library
library(dplyr)

# Load the original air.RData data to tidy up
load("air.RData")

# Use a pipe to filter what county I want data about and
# make it a new air tibble
air <- air |>
  filter(county == "OR - Lane")

# Save the new air tibble into 3.RData
save(air, file = "3.RData")