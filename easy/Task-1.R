library(bugRzilla)
library(tibble)

find_issue <- function(){
  result <- data.frame()
  for (i in 1:7) {
    skip_to_next <- FALSE
    tryCatch({
      issue <- get_bug(i)
      df <- tibble(
        ID = issue$id,
        Product = issue$product,
        Comp = issue$component,
        Assignee = issue$assigned_to,
        Status = issue$status,
        Resolution = issue$resolution,
        Summary = issue$summary,
        Changed = issue$last_change_time,
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
    result <- rbind(result, temp)
  }
  print(result)
  
}

find_issue()