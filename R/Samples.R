#' thisIsAFunction
#' 
#' @description
#' A simple function
#' 
#' @examples
#' thisIsAFunction()
#' 
#' @export
thisIsAFunction <- function(){
  print('test')
}

#' makeFakeTable
#' 
#' @description
#' Makes a table to play around with
#' 
#' @examples
#' makeFakeTable()
#' 
#' @returns A fake table of type data.table to play around with
#' 
#' @export
makeFakeTable <- function(){
  retVal <- data.table(x = c(1, 2, 3, 4, 5),
                       y = c(2, 4, 6, 8, 10),
                       z = c('a', 'b', 'c', 'd', 'e'))
  retVal
}