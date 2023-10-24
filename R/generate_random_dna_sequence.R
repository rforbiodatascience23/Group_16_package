

#' Title
#' Generate random DNA sequence
#' @param length the length that the generated DNA seq should be
#'
#' @return returns a random generated DNA sequence
#' @export
#'
#' @examples
generate_random_dna_sequence <- function(length){
  sequence <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  dna_sequence <- paste0(sequence, collapse = "")
  return(dna_sequence)
}
