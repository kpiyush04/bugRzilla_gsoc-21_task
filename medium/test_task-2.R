library(testthat)
library(vcr)
library(curl)

test_that("desired_bugissue works", {
  vcr::use_cassette("desired_bug", {
    bug <- list()
    for (i in 1:7) {
      skip_to_next <- FALSE
      tryCatch({
        issue <- get_bug(i)
        df <- tibble(
          ID = issue$id
        )
        n_rows <- nrow(df)
      },
      error = function(e) {
        skip_to_next <<- TRUE
      }
      )
      if (skip_to_next) {
        next
      }
      temp <- df[seq.int(from = n_rows, by = -1L, length.out = n_rows), ]
      bug <- c(bug, temp)
    }
    t1 <- desired_bug(sample(bug,1))
  })
  expect_type(t1, "NULL")
})
