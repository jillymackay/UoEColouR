#' UoEColouR palettes delivered to ggplot preferences
#'
#' @param palette Choose a palette from the named palettes in the 'ed_palettes' list
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#'@export


uoe_pal <- function(palette = "core", reverse = FALSE, ...) {
  pal <- ed_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


#' Fill scale constructor for UoE branding colours
#'
#' @param palette Character name of palette in ed_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export


scale_fill_uoe <- function(palette = "bright", discrete = TRUE, reverse = FALSE, ...) {
  pal <- uoe_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("ed_palettes", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}


#' Color scale constructor for UoE branding colors
#'
#' @param palette Character name of palette in ed_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @export


scale_colour_uoe <- function(palette = "bright", discrete = TRUE, reverse = FALSE, ...) {
  pal <- uoe_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("ed_palettes", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}