# Import used libraries
library(dplyr)
library(readr)

# Load the air.csv as a tibble
air <- readr::read_csv("air.csv")

# Use pipes to rename the columns, select the desired
# columns, and save to new air tibble
air <- air |>
  rename(
    state = State,
    county = "State-County",
    pollutant = POLLUTANT,
    emissions = "Emissions (Tons)",
    level_1 = "SCC LEVEL 1",
    level_2 = "SCC LEVEL 2",
    level_3 = "SCC LEVEL 3",
    level_4 = "SCC LEVEL 4",
  ) |>
  select(
    state,
    county,
    pollutant,
    emissions,
    level_1,
    level_2,
    level_3,
    level_4
  )

# Debugging
#View(air)

# Save the new air tibble as air.RData
save(air,file = "air.RData")