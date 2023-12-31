#' Transcription
#'
#' @param dna_seq The input is the DNA sequence
#'
#' @return The output should be the RNA sequence
#' @export
#'
#' @examples
#' transcribe('AGCTAACTG')
transcribe <- function(dna_seq){
  rna_seq <- gsub("T", "U", dna_seq)
  return(rna_seq)
}
