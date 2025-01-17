# Define a function called happiness
happiness <- function(location) {
  # Set beginning year
  year <- 2020
  # Create a for loop to figure the happiness score for each year
  for (files in list.files(pattern=".*\\.csv$")) {
    # Read the current csv file
    happyData <- read.csv(files)
    # Get the happy score for the desired country
    scoreForYear <- subset(happyData, country == location)
    # Check to see if the desired country is even in the data
    if (location %in% happyData$country) {
      # Sum each columns value starting from column 2 and round the decimal to 2 digits
      score <- round(apply(scoreForYear[2:length(scoreForYear)],MARGIN = 1, FUN = sum),digits=2)
    } else {
      # Set the score to data unavailable if the desired country is not in the data
      score <- "data unavailable"
    }
    # Print the happy score for the desired country to the screen for each year
    cat(paste0(wantedCountry," (",year,"): ",score,"\n"))
    # Increase the year output by one
    year <- year + 1
  }
}

# Ask the user for what country they desire a happy score
wantedCountry <- readline("Country: ")
# run the happiness function for the desired country
happyScore <- happiness(wantedCountry)
