#'Movie Budget Distribution
#'
#'Displays budget distibution over the years 2007-2011
#'
#'@param
#'
#'@return Histogram
#'
#'@example
#'
#'bdg_movie()
#'
#'@export
#'

bdg_movie <- function(){
o <- ggplot(data=movies, aes(x=BudgetinMillions))
o + geom_histogram(binwidth=10, aes(fill=Genre),color="Black")+
  xlab("Budget in Millions") +
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution")+
  theme(axis.title.x = element_text(color="DarkGreen",size=20),
        axis.title.y=element_text(color="Red", size=20),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),

        legend.title = element_text(size=15),
        legend.text = element_text(size =10),
        legend.position = c(1,1),
        legend.justification = c(1,1),

        plot.title = element_text(color="DarkBlue",size=20))

}
