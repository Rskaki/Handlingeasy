#' Rename a variable in a data table
#'
#' This function renames a variable in a data table.
#'
#' @param nametable The data table
#' @param variable The variable to be renamed
#' @param newname The new variable name
#' @return A data table with the variable renamed
#' @importFrom magrittr %>%
#' @importFrom dplyr rename
#' @export
#'
#' @examples
#' # Rename the variable 'old_name' to 'new_name' in the data table 'my_data'
#' my_data <- renameh(my_data, "old_name", "new_name")
#'
#' # If the variable does not exist, a warning is issued
#' renameh(my_data, "nonexistent_variable", "new_name")
#'

renameh <- function(nametable, variable, newname) {
  if (variable %in% colnames(nametable)) {
    nametable <- nametable %>% rename(newname = all_of(variable))
  } else {
    warning(paste("Column", variable, "does not exist in the table. No renaming performed."))
  }
  return(nametable)
}


