#'Audience Ratings by Genre and Year
#'
#'Displays Audience Ratings histogram charts by genre and year
#'
#'@param
#'
#'@return Faceted histogram
#'
#'@example
#' \dontrun{
#'audratings()
#'
#'}
#'
#'@export
#'
#'

audratings <- function(){
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10,
                   aes(x=AudienceRatings),
                   fill="Pink", color="Black")+
  facet_grid(Genre~Year) +
  xlab("Audience Ratings") +
  ylab("Number of Movies")

}
