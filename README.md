
## Movie Ratings Analysis

MovieDataAnalysis, prepared by Nazli Begum Cirpanli

<!-- badges: start -->
<!-- badges: end -->

The goal of MovieDataAnalysis package is to give the users basic insights about analysis and visualization of movie data. 

## Installation

First install the R package "devtools" if not installed

``` r
devtools::install_github('unimi-dse/891a3f81')
```

## Loading

Load the package:

``` r
require(MovieDataAnalysis)
```
## Description

MovieDataAnalysis consists of functions which explore and visualize some critical aspects of the data. This package might be helpful for those who are interested in movies and want to discover relationships between key variables such as ratings, budget etc. This package comes with its dataset and the functions are particular to it.

## Functions


#### Data Analysis 

```
aboveavr () Lists the movies which have above average budgets for a selected year

corre ()  Computes the correlation between Critics Ratings and Budget and tells how strong the computed correlation is

fltmovie () Lists the movies which have higher critics ratings than %90 of the data

ratingsmode () Computes the most recurring ratings for Critics and Audience Ratings over the five years
```

#### Data Visualization
```

audratings() Displays Audience Ratings histogram charts by genre and year

bdg_movie() Displays budget distibution over the years 2007-2011

boxplot_ratings() Displays a boxplot chart of Critics Ratings vs. Audience Ratings by genre

critvsaud() Displays a line plot of Critics Ratings vs. Audience Ratings by genre and budget

density_bdg() Displays a density chart of budget by genre
```
#### Examples


Below are the basic examples which shows you how to use the functions: 

``` r
library(MovieDataAnalysis)

aboveavr (2009)
corre ()
fltmovie ("Action",100,2009)
ratingsmode ()

audratings()
bdg_movie()
boxplot_ratings()
critvsaud()
density_bdg()

```
#### Arguments


Below are the arguments for functions aboveavr() and fltmovie():

``` r

aboveavr (n) : n, Year / must be in between 2007 - 2011

fltmovie ("gnr",n,yr):
gnr, Genre / must be "in quotations" / must be one of these: "Action","Adventure","Comedy","Drama","Horror","Romance"
n,   Budget Amount / must be in between 0-300
yr,  Year / must be in between 2007-2011

```

###### Note:

These functions are only useful for the particular dataset which is also included in the MovieDataAnalysis package.

### Dataset

This package provides a movie dataset containing 562 rows of 6 variables. The dataset was cleaned, organized and named accordingly before usage.

The dataset was downloaded from https://www.superdatascience.com/

Below are the codes to prepare the dataset. 
User does not have to run these codes, package has the final dataset ("movies") in itself.

``` r
Getdata <- function(){

#'import data.....

     movies <- read.csv("C:\\Users\\TOSHIBA\\Desktop\\R study\\Movies\\Movie-Ratings.csv")
    
#'organize data.....

     colnames(movies)<-c("Films","Genre","CriticsRatings","AudienceRatings","BudgetinMillions","Year")
     movies$Year<-factor(movies$Year)
     return(movies)
  }

```
##### Download the dataset:

```
data("movies")
```
##### Data Documentation:

```
?movies
```

