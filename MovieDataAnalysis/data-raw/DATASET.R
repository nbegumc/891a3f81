#' Importing and organizing the dataset
#'
#' This functions imports the dataset and makes necessary adjustments to make
#' it useful
#'
#' @param
#'
#' @return dataframe : "movies"
#'
#' @export
#'
#' @examples
#' \dontrun{
#' Getdata()
#' }

Getdata <- function(){

#-------import data-----------
     movies <- read.csv("C:\\Users\\TOSHIBA\\Desktop\\R study\\Movies\\Movie-Ratings.csv")
#-----organize data-----------
     colnames(movies) <-c("Films","Genre","CriticsRatings","AudienceRatings","BudgetinMillions","Year")
     movies$Year<-factor(movies$Year)
     return(movies)
  }



