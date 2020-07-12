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
  A <- as.matrix(read.table(fichier, sep=";"))
  return (A)
}

#' Identite
#'
#' @param A a matrix 
#'
#' @return a matrix
#' @export
#'
#' @examples
#' A <- matrix(data = 1:16, nrow = 4)
#' identite(A)
#' 
identite <- function(A) {
  rang <- nrow(A)
  I <- diag(nrow = rang)
  return (I-A) 
 }
