# importing libraries 
library(bugtractr)
library(bugRzilla)

# This is the function which will redirect the desired_bug to the browser
desired_bug<- function(id){
  base_url <- "https://bugs.r-project.org/bugzilla/show_bug.cgi?id="  # characterizing a base URL that will be linked with bug_id to divert to the program
  url <- browseURL(paste(c(base_url, id), collapse = ""))  # to get the desired bug report on the browser
  return(url)
}