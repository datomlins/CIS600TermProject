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