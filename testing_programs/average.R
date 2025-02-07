average1 <- function(x) {
  # Test one. Will not stop program if true
  if (!is.numeric((x))) {
    return(NA)
  }
  sum(x) / length(x)
}

# Use message() for error
average2 <- function(x) {
  # Test one. Will not stop program if true
  if (!is.numeric((x))) {
    # Sends message to user
    message("`x` must be a numeric vector. Returning NA instead")
    return(NA)
  }
  sum(x) / length(x)
}


# Use warning() to send to user
average3 <- function(x) {
  # Test one. Will not stop program if true
  if (!is.numeric((x))) {
    # Sends warning to user
    warning("`x` must be a numeric vector.")
    return(NA)
  }
  sum(x) / length(x)
}


# Use stop to raise an error
average4 <- function(x) {
  # Test one. Will not stop program if true
  if (!is.numeric((x))) {
    # Sends message to user
    stop("`x` must be a numeric vector")
  }
  sum(x) / length(x)
}

# Check if any value is NA
average5 <- function(x) {
  # Test one. Will not stop program if true
  if (any(is.na(x))) {
    warning("`x` contains one or more NA values.")
    return(NA)
  }
  if (!is.numeric((x))) {
    # Sends message to user
    stop("`x` must be a numeric vector.")
  }
  sum(x) / length(x)
}

