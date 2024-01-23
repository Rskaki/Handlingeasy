#' A function that checks for duplicates. If there are, it deletes the duplicates from a variable.
#'
#' @param variable The table variable
#' @param nametable The data table
#' @return The function returns the table with the variable without duplicates
#' @import Magrittr
#' @import dplyr
#' @import tidyverse
#'
#' @export

deleteduplicates <- function(nametable, variable) {
  if (any(duplicated(nametable[[variable]]))) {
    nametable <- nametable[!duplicated(nametable[[variable]]), ]
  } else {
    cat("La variable", variable, "n'a pas de doublons.\n")
  }
  return(nametable)
}
