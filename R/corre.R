#' Correlation between Critics Rating and Budget
#'
#' Compute the correlation between Critics Ratings and Budget and tell how strong the computed correlation is.
#'
#' @param
#'
#' @return correlation number between -1 and 1, and comment
#' @import stats
#' @export
#'
#'  @examples
#' \dontrun{
#' corre()
#' }

corre <- function(){

  c <- cor(movies$BudgetinMillions, movies$CriticsRatings,use = "everything")
  print(c)
  if(c>0.7){
    print("There is a strong correalation between Budget and Critics Rating")
  }
  else if (c>=0.3){
    print("There is a moderate correalation between Budget and Critics Rating")
  }
  else{
    print("There is a weak correalation between Budget and Critics Rating")
  }

}
