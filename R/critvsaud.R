#'Critics Ratings vs Audience Ratings Line Plot
#'
#'Displays Critics Ratings vs. Audience Ratings by genre and budget
#'
#'@param
#'
#'@return Point Line Plot
#'
#'@example
#'
#'critvsaud()
#'
#'@export


critvsaud <- function(){

  p <- ggplot(data = movies, aes(x=CriticsRatings,y=AudienceRatings,
                                 color=Genre, size=BudgetinMillions))
  p + geom_line(size=0.8)+ geom_point()

}






