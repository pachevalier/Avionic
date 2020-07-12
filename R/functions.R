#' Matrice
#'
#' @param fichier path to the file
#'
#' @return a data.frame
#' @export
#'
#' @examples
#' 
matrice <- function(fichier) { 
  donnees <- as.matrix(read.table(fichier, sep=";"))
  return (A)
}
