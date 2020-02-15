#' Movies with above average budgets
#'
#' This function lists the movies which have above average budgets for a selected year
#'
#' @param n Year / must be in between 2009 - 2011
#' @return Movie names
#' @import dplyr
#' @export
#' @examples
#' \dontrun{
#' aboveavr ()
#' aboveavr (2009)
#'
#'}
#'

aboveavr <- function(n){

  movies$Films[movies$BudgetinMillions>mean(subset(movies,Year == n)$BudgetinMillions) &
                 movies$Year== n]

}
