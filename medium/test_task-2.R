library(testthat)
library(vcr)
library(curl)

test_that("desired_bugissue works", {
  vcr::use_cassette("desired_bug", {
    issue <- sample(1:1000, 1)
    t1 <- desired_bug(issue)
  })
  expect_type(t1, "NULL")
})
