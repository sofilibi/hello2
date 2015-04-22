context("hello2")

test_that("hello2 function operates well", {
  # The following function should be used to reduce time
  # on CRAN by avoiding running a test since time on
  # CRAN is limited.  skip_on_cran()
  
  expect_that(hello2() == "Hello, world!", is_true())
  expect_that(hello2(name = "Sophie") == "Hello, Sophie!", 
              is_true())
  
  expect_that(hello2(1), throws_error())
  expect_that(hello2(TRUE), throws_error())
  expect_that(hello2(NULL), throws_error())
}) 