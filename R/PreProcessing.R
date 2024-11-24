#' stripUseless
#' 
#' @description
#' Strips columns that are most likely useless such as
#' "Browser" and "OperatingSystems"
#' 
#' @examples
#' stripUseless (table)
#' 
#' @param table The table being stripped
#' @param ... A list of columns to remove
#' 
#' @returns a modified table which no longer has the undesired columns
#' 
#' @examples
#' stripUseless(data.table(x = c(1,2,3), y = c(1,2,3)), x)
#' 
#' 
#' @import data.table
#' 
#' @export
stripUseless <- function(theTable, ...) {
  theTable[, (...) := NULL]
}

#' proportionalize
#' 
#' @description
#' Takes the provided columns and collapses them into one column which is 
#' the proportion of the time spent in the selected category
#' 
#' @examples
#' proportionalize(funTable, funtime, seriousTime, funTime)
#' 
#' @param theTable The table whose columns are being manipulated
#' @param priCol The column which will be the one the output column
#'               will be the proportion of
#' @param cols   The columns being aggregated
#' 
#' @returns The table with its columns aggregated
#' 
#' @import data.table
#' 
#' @export
proportionalize <- function(theTable, priCol, ...) {
  # need to generalize the provided columns for use in the summation @TODO
  columns <- list(...)
  # sum the columns of interest
  theTable <- theTable[, total_Duration := Administrative_Duration + Informational_Duration + ProductRelated_Duration]
  
  # divide the priCol by the sum for each row
  theTable <- theTable[, proportion_of_duration := ProductRelated_Duration / total_Duration
                       ]
  # strip the columns that were combined
  # theTable <- stripUseless(theTable, columns)

}

#' makeNiceList
#' 
#' @description
#' Takes a gross variable length list and converts it into a nice one for use
#' in proportionalize
#' 
#' @examples
#' makeNiceList(theColumnsVariableFromProportionalize)
#' 
#' @param grossList the grossly formated list
#' 
#' @returns a list of symbols that aren't themselves also lists.
#' 
makeNiceList <- function(grossList){
  result <- list()
  for (val in grossList) {
  
  }
}
