library(stringr)
library(dplyr)

shows <- read.csv("shows.csv")

shows |>
    group_by(show) |>
    summarize(votes = n()) |>
    ungroup() |>
    arrange(desc(votes))

# Use str_trim to remove whitespace on either side of a string
# Use str_squish to remove whitespaces inside strings
shows$show <- shows$show |> 
    str_trim() |>
    str_squish() |>
    str_to_title() # Use this to set first letter of each word to upper

# Use the str_detect to see if a value is detected
str_detect(shows$show, "Avatar") # Returns booleans
shows$show[str_detect(shows$show, "Avatar")] # Returns strings detected
shows$show[str_detect(shows$show, "Avatar")] <- "Avatar: The Last Airbender" #sets detected strings to desried value


shows |>
    group_by(show) |>
    summarize(votes = n()) |>
    ungroup() |>
    arrange(desc(votes))
