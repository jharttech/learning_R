# Read the bus csv into a data frame
bus <- read.csv("bus.csv")

# Read the train csv into a data frame
train <- read.csv("rail.csv")

# Print the train routes for user to help in their selection of route
print("Train Routes")
paste(unique(train$route))

# Print the bus routes for user to help in their selection of route
print("Bus Routes")
paste(unique(bus$route))

# Take user input as to what route they want
pref_route <- readline("Please enter the route you would like to take. \n")

# If the user picks a train route then we will use the train data frame
if (pref_route %in% train$route){
  # Create a subset of the trains that run on the users chosen route
  all_service <- subset(train, train$route == pref_route)
  # Create a subset of the route info during peak hours
  peak <- subset(all_service, all_service$peak == "PEAK")
  # Create a subset of the route info during the off-peak hours
  off_peak <- subset(all_service, all_service$peak == "OFF_PEAK")
  # Find the mean for the route being on time during peak hours and multiply by 100 to get a percent value
  on_time_peak <- round(mean(peak$numerator/peak$denominator),digits = 2)*100
  # Find the mean for the route being on time during off-peak hours and multiply by 100 to get a percent value
  on_time_off_peak <- round(mean(off_peak$numerator/off_peak$denominator), digits = 2)*100
  # Display the routes peak and off-peak percent of being on time
  paste0("The ",pref_route," line is on time ",on_time_peak,"%"," of the time during peak hours and ",on_time_off_peak,"%"," of the time during off-peak hours.")
# If the user picks a bus route then we will use the bus data frame
}else if(pref_route %in% bus$route){
  # Create a subset of the buses that run on the users chosen route
  all_service <- subset(bus, bus$route == pref_route)
  # Create a subset of the route info during peak hours
  peak <- subset(all_service, all_service$peak == "PEAK")
  # Create a subset of the route info during off-peak hours
  off_peak <- subset(all_service, all_service$peak == "OFF_PEAK")
  # Find the mean for the route being on time during peak hours and multiply by 100 to get a percent value
  on_time_peak <- round(mean(peak$numerator/peak$denominator),digits = 2)*100
  # Find the mean for the route being on time during off-peak hours and multiply by 100 to get a percent value
  on_time_off_peak <- round(mean(off_peak$numerator/off_peak$denominator), digits = 2)*100
  # Display the routes peak and off-peak percent of being on time
  paste0("The ",pref_route," bus route is on time ",on_time_peak,"%"," of the time during peak hours and ",on_time_off_peak,"%"," of the time during off-peak hours.")
# If the user picks an invalid route then state that on the screen
}else{
  print("Invalid Route!")
}

