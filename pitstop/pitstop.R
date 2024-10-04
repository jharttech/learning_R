options <- list.files(pattern = ".*?\\.csv")
#print(options)

race_data <- read.csv(readline("Which race data would you like to analyze? "))

stops <- nrow(race_data)
shortest <- min(race_data$time)
longest <- max(race_data$time)
total <- sum(race_data$time)

print(
  paste(
    "There were",
    stops,
    "pit stops, with the shortest being",
    shortest,
    "seconds and the longest being",
    longest,
    "seconds. The total time spent on pit stops was",
    total,
    "seconds."
  )
)