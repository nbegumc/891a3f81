#' Filtering top rated movies by genre, budget and year
#'
#' This functions gives you the movies which have higher critics ratings than
#' %90 of the data
#'
#' @param gnr genre / "in quotations"
#' @param n   budget amount
#' @param yr  year / between 2007-2011
#' @return  movie names
#'
#' @export
#' @examples
#' \dontrun{
#' fltmovie("genre", budget in millions, year)
#' fltmovie ("Action",100,2009)
#'
#' }
#'

fltmovie <- function(gnr,n,yr){

  topminscore <- quantile(movies$CriticsRatings,probs = 0.90,na.rm = TRUE)
  movies$Films[movies$Genre==gnr & movies$BudgetinMillions>n & movies$Year==yr &
                 movies$CriticsRatings>=topminscore]

}
