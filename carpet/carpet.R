# Function to calculate average yearly growth rate
calculate_growth_rate <- function(years, visitors) {
  # growth is total growth from first year to last year divided by number of years for avg growth
  growth <- (visitors[as.integer(length(years))] - visitors[1])/(years[as.integer(length(years))] - as.integer(years[1]))
  return(growth)
}

# Function to figure the predicted amount of visitors
predict_visitors <- function(years, visitors, year) {
  # latestyear is the last year recorded in our data frame
  latestYear <- years[as.integer(length(years))]
  # latestVisitors is the last recorded amount of yearly visitors
  latestVisitors <- as.double(visitors[length(years)])
  # prediciton figures the amount of visitors based on the year the user inputs
  prediction <- latestVisitors + (calculate_growth_rate(years, visitors) * (as.integer(year) - latestYear))
  return(prediction)

}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))

