# Define a function called random_character
random_character <- function() {
  # Define a list of all the possible letters to use
  alpha <- c('a','b','c','d','e','f','g','h','i','j','k',
             'l','m','n','o','p','q','r','s','t','u','v',
             'w','x','y','z')
  # Use sample to pull a random letter from the alpha list
  random_letters <- alpha[sample(seq_along(alpha), 1)]
  # Print the letter to the screen
  cat(paste0(random_letters))
}

# Define a function called print_sequence
print_sequence <- function(length) {
  # Loop over the renadom_character function for the desired
  # Amount of times
  for (x in 1:length) {
    # Run the random_character function
    letter <- random_character()
    # Sleep between each run of the random_character function
    # to create the appearance of typing
    Sys.sleep(.25)
  }
}

babel <- print_sequence(20)