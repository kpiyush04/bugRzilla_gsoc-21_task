# importing testthat library
library(testthat)

# importing the file on which test has to be done
source("medium/Task-2.R")

test_that("desired_bugissue works", {
  # characterizing a base URL that will be linked with bug_id to divert to the program
  base_url <- "https://bugs.r-project.org/bugzilla/show_bug.cgi?id="
  
  # taking a for loop form 0 to 7 and 
  for (i in 0:7) {
    # calling the desired_bug function from 0 to 7 which is taking two formal augments i.e. base_url and considering i as bug_id
    t1 <- desired_bug(base_url, i) 
  }
  expect_equal(paste0(base_url), "https://bugs.r-project.org/bugzilla/show_bug.cgi?id=")
})
