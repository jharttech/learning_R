# Load needed testing library
library(testthat)
# Load the source file to test
source("believe.R")

# Expect correct operations
test_that("`believe` convert user input to specified temperature scale", {
  expect_equal(believe("celsius", 0), "-17.78 degrees celsius")
})

# Expect correct operation despite case of scale
test_that("`believe` is case insensitive when it comes to the scale", {
  expect_equal(believe("Celsius", 32), "0 degrees celsius")
})

# Expect correct operations
test_that("`believe` convert user input to specified temperature scale", {
  expect_equal(believe("fahrenheit", 30), "86 degrees fahrenheit")
  expect_equal(believe("fahrenheit", -30.2), "-22.36 degrees fahrenheit")
})

# Expect Warning
test_that("`believe` warns if `value` is non-numeric", {
  expect_warning(believe("celsius", "1"))
})

# Expect Error
test_that("`believe` stops if `scale` is not celsius or fahrenheit", {
  expect_error(believe("Kelvin", 10))
})