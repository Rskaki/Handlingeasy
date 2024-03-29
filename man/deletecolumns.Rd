% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Deletenamecolumnsh.R
\name{deletecolumns}
\alias{deletecolumns}
\title{Delete a variable in a data table}
\usage{
deletecolumns(nametable, namecolumns)
}
\arguments{
\item{nametable}{The data table}

\item{variable}{The variable to be deleted}
}
\value{
A data table with the variable deleted
}
\description{
This function delete a variable in a data table.
}
\examples{
# Delete the variable 'namecolumns' in the data table 'nametable'
nametable <- deletcolumns(my_data,"namecolumns")


}
