#' DNA Codons
#'
#' @param DNA_sequence String of bases A, T, G, C or U.
#' @param start Position to start splitting string into codons.
#'
#' @return Strings of codons
#' @export
#'
#' @examples
#' DNA1 = 'ATGGCCAATGGGCCATGCT'
#' DNA_codons(DNA1)

DNA_codons <- function(DNA_sequence, start = 1){
  DNA_length <- nchar(DNA_sequence)
  codons <- substring(DNA_sequence,
                      first = seq(from = start, to = DNA_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = DNA_length, by = 3))
  return(codons)
}
