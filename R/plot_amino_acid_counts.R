#' Title
#' Plot Amino Acid Counts
#' @param amino_acid_sequence input is a amino acid seq
#'
#' @return plot of amino acid counts
#' @export
#'
#' @examples
#' amino_seq = 'AAACGAGGCUAA'
#' plot_amino_acid_counts(amino_seq)
#'
plot_amino_acid_counts <- function(amino_acid_sequence){
  amino_acids <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(amino_acids, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_Acid"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acid, y = Counts, fill = Amino_Acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
