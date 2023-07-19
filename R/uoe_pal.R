#' Return function to interpolate a UoE colour palette. Helper function for scale_uoe
#'
#' @param palette Character name of palette in ed_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#'@export


uoe_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- ed_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
