#'Critics Ratings vs Audience Ratings Box Plots
#'
#'Displays Critics Ratings vs. Audience Ratings by genre
#'
#'@param
#'
#'@return Box Plots
#'
#'@example
#'
#'boxplot_ratings()
#'
#'@export
#'
#'

boxplot_ratings <- function(){
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRatings, color=Genre))
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

}

