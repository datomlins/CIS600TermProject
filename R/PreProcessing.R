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

#' proportionalizeTime
#' 
#' @description
#' Takes the provided columns and collapses them into one column which is 
#' the proportion of the time spent in the selected category
#' 
#' @examples
#' proportionalizeTime(funtime, seriousTime, funTime)
#' 
#' @param priCol The column which will be the one the output column
#'               will be the proportion of
#' @param cols   The columns being aggregated
#' 
#' @returns The aggregated column
#' 
#' @import data.table
#' 
#' @export
proportionalizeTime(priCol, ...) {
  # sum the columns of interest
  # divide the priCol by the sum for each row
  # strip the columns that were combined
  # add the column that we calculated
  # return the table
}
