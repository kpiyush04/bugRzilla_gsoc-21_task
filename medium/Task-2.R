# importing libraries 
library(bugRzilla)

# This is the function which will redirect the desired_bug to the browser
desired_bug<- function(url, id){
  # taking the browseURL function and concatenating the formal arguments which will open as a URL
  url <- browseURL(paste(c(url, id), collapse = ""))
  return(url)
}
