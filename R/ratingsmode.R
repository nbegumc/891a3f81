#' Ratings Mode
#'
#' This function computes the most recurring ratings for Critics and Audience Ratings
#' over the five years
#'
#' @return A vector with column names
#'
#' @export
#' @examples
#' \dontrun{
#' ratingsmode()
#'
#' }
#'

ratingsmode <- function(){

  uniqc <- unique(movies$CriticsRatings)
  criticsmode <- uniqc[which.max(tabulate(match(movies$CriticsRatings, uniqc)))]

  uniqa <- unique(movies$AudienceRatings)
  audiencemode <- uniqa[which.max(tabulate(match(movies$AudienceRatings, uniqa)))]

  c("Critics Mode"=criticsmode,"Audience Mode"=audiencemode)

}
