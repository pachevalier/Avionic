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


#' coef_techniques
#'
#' @param A a matrix
#' @param B a matrix
#'
#' @return a matrix
#' @export
#'
#' @examples
#' 
coef_techniques <- function (A,B) {
  tei <- A
  prod <- B
  ctec <- matrix(nrow = nrow(tei), ncol = ncol(tei))
  if (ncol(tei) == length(prod)) {
    for (i in 1:nrow(tei)) {
      for (j in 1:ncol(tei)) {
        if (prod[j]==0) {
          ctec[i,j] <- 0
        }else{
          ctec[i,j] <- tei[i,j]/prod[j]
        }
      }
    }
    return (ctec)
  }
  else {
    message("Erreur : la taille du vecteur de production 
            et du TEI ne sont pas cohérentes")
  }
}
