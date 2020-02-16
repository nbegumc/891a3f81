#'  Budget Density Chart by Genre
#'
#' Displays a density chart of budget by genre
#'
#'@param
#'
#'@return Density chart
#'
#'@example
#'
#' \dontrun{
#'density_bdg()
#'
#' }
#'
#'@export
#'

density_bdg <- function(){
f<- ggplot(data = movies,aes(x=BudgetinMillions))
f + geom_density(aes(fill=Genre), position = "stack")+
  xlab("Budget in Millions") +
  ylab("Number of Movies")
}
