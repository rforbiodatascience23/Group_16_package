#' Amino acid from RNA
#'
#' @param codons
#' Takes a set of codons
#'
#' @return
#' and merge them into one amino acid.
#'
#' @export
#'
#' @examples
#' prot_seq("AUA")
prot_seq <- function(codons){
  sequence <- paste0(codon[codons], collapse = "")
  return(sequence)
}
