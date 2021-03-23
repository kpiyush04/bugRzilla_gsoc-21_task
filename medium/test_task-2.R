library(testthat)
library(vcr)
library(curl)

test_that("desired_bugissue works", {
  vcr::use_cassette("desired_bug", {
    bug_id <- sample(bug$id, 1)
    t1 <- desired_bug(bug_id)
  })
  expect_type(t1, "NULL")
})
