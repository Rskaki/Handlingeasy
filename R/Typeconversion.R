#' A function to convert the type of a variable
#'
#' @param variable The table variable
#' @param nametable The data table
#' @return The function returns the table with the converted variable
#' @import Magrittr
#' @import dplyr
#' @import tidyverse
#'
#' @export


typeconversion <- function(nametable, variable) {
  if (class(nametable[[variable]]) == "numeric") {
    nametable <- nametable %>%
      mutate(!!variable := as.character(!!sym(variable)))
  } else if (class(nametable[[variable]]) == "character") {
    nametable <- nametable %>%
      mutate(!!variable := as.numeric(!!sym(variable)))
  }
  return(nametable)
}

