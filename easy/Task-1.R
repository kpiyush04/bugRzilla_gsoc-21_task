library(bugRzilla)

find_issue <- function(){
  for (i in 1:7) {
    skip_to_next <- FALSE
    tryCatch({
      issue <- get_bug(i)
      g1 <- issue$id
      print(issue)
      message("The issue id's are: ",g1)
    },
      error = function(e) {
        skip_to_next <<- TRUE
      }
    )
    if (skip_to_next) {
      next
    }
  }
}

find_issue()