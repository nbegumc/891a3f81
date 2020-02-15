#' Average budget by genre for selected year
#'
#' This function computes the average budget amounts by genres for a given year
#'
#' @param n  Year / must be in between [2009,2011]
#'
#' @return A data frame with genres and average budget amounts
#'
#' @import dplyr
#' @export
#' @examples
#'  \dontrun{
#' yearlyavrgenrebdg()
#' yearlyavrgenrebdg(2010)
#'
#'}

yearlyavrgenrebdg <- function(n){
  movies %>% group_by(Genre) %>% dplyr::filter(Year == n) %>%
    summarise(ave = mean(BudgetinMillions))

}

