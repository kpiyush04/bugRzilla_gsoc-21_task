#### Task-3: Propose a plan (no need to provide code but it is welcomed as example, no need to run it) to analyze issues to learn how to make high quality issues: What questions would be interesting? How would you answer them? (Critical thinking and independence)

 > Taking few parameters under-consideration that should be used to analyze issues to learn how to make high quality issues:

  1. **Installation**: Whenever one install a package, so at the very beginning the package throws an warning. Whenever someone tries to install the package due to some reason if the package gets broke so in that situation Exception handling arises. This can be done using tryCatch() function. 
  
  For example-
          
          try({
          Message("Installation in Progress")
          }), error = function(e){
          Message("WARNING: installation failed.")
          }
  In this, if the package installs the successfully then it will throw the message "installation in Progress" but if somewhere package get breaks due to some lack of dependencies or some other reason then it should throw exception message i.e. "WARNING: installation failed."
          
  2. **Analysis**: For Analysis there should be a fault injection. In this basically two scenarios can be arise like:
       
        1. **No exception is thrown but all test cases will be passed.**
            
   For example-
              
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
          
  In this example the excetion has occuered that there is issue_id has to be there but when it goes to exception it doesn't throw the message instead of that it skips to next id, and without breaking the for loop.
       
  2. **An exception is thrown but all test cases will be passed.**
        
  For example-
              
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
                     message(
                       "id not found ", g1+1
                    )
                  }
                )
                if (skip_to_next) {
                  next
                }
              }
            }
          find_issue()
  In this example the exception has occurred that there is issue_id has to be there but when it goes to exception it throw the message that "id is not found" instead of that it skips to next id, and without breaking the for loop.
  
  3. **I/O**: In this, an exception which will be thrown as output for an input.

  For example-

      find_issue <- function(){
        base_url <- "https://bugs.r-project.org/bugzilla/show_bug.cgi?id="
        for (i in 1:7) {
          skip_to_next <- FALSE
          tryCatch({
            issue <- get_bug(i)
            g1 <- issue$id
            browseURL(paste(c(base_url, i), collapse = ""))
            message("The issue id's are: ",g1)
          },
          error = function(e) {
            skip_to_next <<- TRUE
            message(
              "id not found ", g1+1
            )
          }
          )
          if (skip_to_next) {
            next
          }
        }
      }
      
      find_issue()

In this example the exception has occurred that there is issue_id has to be there but when it goes to exception it throw the message that "id is not found with issue id" instead of that it skips to next id, and without breaking the for loop and redirect to the url to the corresponding issue_id.