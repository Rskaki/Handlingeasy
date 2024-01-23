#' Delete a variable in a data table
#'
#' This function delete a variable in a data table.
#'
#' @param nametable The data table
#' @param variable The variable to be deleted
#' @return A data table with the variable deleted
#' @import magrittr
#' @import dplyr
#' @export
#'
#' @examples
#' # Delete the variable 'namecolumns' in the data table 'nametable'
#' nametable <- deletcolumns(my_data,"namecolumns")
#'
#'

deletecolumns <- function(nametable,namecolumns){
  if(namecolumns %in% colnames(nametable)){
  nametable <- select(nametable, -namecolumns)
  }
  else{print("La colonne n'existe pas")
  }
  return(nametable)
}


