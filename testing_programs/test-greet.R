# Test Driven Development - create the test first then write the function


library(testthat)
source("greet.R")

test_that("`greet` says hello to a user", {
  expect_equal(greet("Carter"), "Hello, Carter")
  expect_equal(greet("Mario"), "Hello, Mario")
  expect_equal(greet("Peach"), "Hello, Peach")
})

# Behavior-Driven Development - First define what we want our function to
# do, then describe its behavior

# describe - describe what we want our funciton to do
# it - our function should do something particular

describe("greet()", {
  it("can say hello to a user", {
    name <- "Carter"
    expect_equal(greet(name), "Hello, Carter")
  })
  it("can say hello to the world", {
    expect_equal(greet(), "Hello, world")
  })
})