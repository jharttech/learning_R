# Demonstrates interactive program to view data by feed type

# Read and clean data
chicks <- read.csv("chicks.csv")
chicks <- subset(chicks, !is.na(weight))

# Determine feed options
feed_options <- unique(chicks$feed)

# Prompt user with options
cat("1.", feed_options[1],"\n")
cat("2.", feed_options[2],"\n")
cat("3.", feed_options[3],"\n")
cat("4.", feed_options[4],"\n")
cat("5.", feed_options[5],"\n")
cat("6.", feed_options[6],"\n")

# Better Way
formatted_options <- paste0(1:length(feed_options),". ",feed_options)


# prompt user with options
cat(formatted_options, sep = "\n")
feed_choice <- as.integer(readline("Feed type: "))

# Conditional logic
if (feed_choice <= 0 || feed_choice > length(feed_options)) {
  print("Invalid Choice!")
} else {
  # Printed selected options
  selected_feed <- feed_options[feed_choice]
  print(subset(chicks, feed == selected_feed))
}



