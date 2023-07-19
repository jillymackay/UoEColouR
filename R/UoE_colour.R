#' Extracts hex codes from the list of UoE brand colours. Helper function for uoe_pal()
#'
#' @param ... Character names of the UoE brand colours
#'


uoe_colour <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (ed_colours)

  ed_colours[cols]
}
