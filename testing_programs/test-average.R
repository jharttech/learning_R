source("average.R")
library(testthat)

 # Test the average5 function 
# test_average5 <- function() {
#   if (average5(c(1, 2, 3)) == 2) {
#     cat("`average5` passed test :)\n")
#   } else {
#     cat("`average5` failed test :(\n")
#   }
#   
#   if (average5(c(-1, -2, -3)) == -2) {
#     cat("`average5` passed test :)\n")
#   } else {
#     cat("`average5` failed test :(\n")
#   }
#   
#   if (average5(c(-1, 0, 1)) == 0) {
#     cat("`average5` passed test :)\n")
#   } else {
#     cat("`average5` failed test :(\n")
#   }
# }
# 
# test_average5()

# Use the library testthat to test
test_that("`average5` calculates mean", {
  expect_equal(average5(c(1, 2, 3)), 2)
  expect_equal(average5(c(-1, -2, -3)), -2)
  expect_equal(average5(c(-1, 0, 1)), 0)
  # Following is due to Floating-Point Imprecision
  expect_equal(average5(c(.1, .5)), .3, tolerance = 1e-8) # 1e-8 is .00000001
})

# Use testthat to test if average5 returns NAs suppressing warning
test_that("`average5` returns NA with NAs in input", {
  expect_equal(suppressWarnings(average5(c(1, NA, 3))), NA)
  expect_equal(suppressWarnings(average5(c(NA, NA, NA))), NA)
})

# Use testthat to warn about NAs
test_that("`average5` warns about NAs in input", {
  expect_warning(average5(c(1, NA, 3)))
  expect_warning(average5(c(NA, NA, NA)))
})

# expect an error
test_that("`average5` stops if `x` is non-numeric", {
  expect_error(average5(c("quack!")))
  expect_error(average5(c("1", "2", "3")))
})