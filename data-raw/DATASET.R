#'
#' List of Movies
#'
#' Source: https://www.superdatascience.com/
#'
#' @format A data frame with 6 variables: \code{Films}, \code{Genre},
#'   \code{CriticsRatings}, \code{AudienceRatings}, \code{BudgetinMillions},
#'   \code{Year}
#' \describe{This dataset consists of a list of movies for the years 2007 - 2011. It includes
#' ratings, years of release, genres and total budgets for each of the movies}
#'
#' \item{Films}{The name of the movie}
#' \item{Genre}{The genre of the movie}
#' \item{CriticsRatings}{Rotten Tomatoes ratings in % }
#' \item{AudienceRatings}{Audience rating of the film in %}
#' \item{BudgetinMillions}{Budget of the film in millions}
#' \item{Year}{Release year of the film}
#'
#'
#'   }

 "movies"

## codes to prepare `DATASET` dataset are below:

usethis::use_data("DATASET")

usethis::use_directory("inst")
movies <- readr::read_csv("C:\\Users\\TOSHIBA\\Desktop\\R study\\Movies\\Movie-Ratings.csv")

use_data_raw("movies")
