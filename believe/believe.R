# initialize function created by ChatGPT to convert
# Fahrenheit to Celsius or Celsius to Fahrenheit
believe <- function(scale, value) {
  if (tolower(scale) == "celsius" && is.numeric(value)) {
    result <- round((value - 32) * (5/9), digits = 2)
    paste(as.character(result), "degrees celsius")
  } else if (tolower(scale) == "fahrenheit" && is.numeric(value)) {
    result <- round(((value * 9/5) + 32), digits = 2)
    paste(as.character(result), "degrees fahrenheit")
  } else {
    if (!is.numeric(value)) {
      warning("`value` must be a numeric vector. Returning NA instead")
      return(NA)
    } else {
      stop("Invalid `scale`. Use 'celsius' or 'fahrenheit'.")
    }
  }
}
