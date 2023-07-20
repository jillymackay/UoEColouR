#' A helper function which modifies a given UoE Colour Palette by ramping to specified length
#'
#' @param n Number of colours you want in your palette, defaults to n colours in palette
#'
#' @param palette Choose from 'ed_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @importFrom grDevices colorRampPalette
#'
#' @examples
#' library(UoEColouR)
#' image(volcano, col = ed_col("bright", 20))
#' @export


ed_col <- function(palette = "bright", n, alpha = 1, reverse = FALSE) {

  pal <- ed_palettes[[palette]]

  if (is.null(pal))
    stop("Palette not found.")

  if(missing(n)) {
    n <- length(pal)
  }

  if (reverse) {
    pal <- rev(pal)
  }

  pal <- colorRampPalette(pal, alpha)(n)

  return(pal)

}

#' Creates a palette from the UoE Edinburgh branded colours
#'
#' @param palette Choose from 'ed_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @importFrom grDevices colorRampPalette
ed_pal <- function(palette = "bright", alpha = 1, reverse = FALSE) {

  function(n) {
    ed_col(palette, n, alpha, reverse)
  }

}


#' Creates a University of Edinburgh colour scale for ggplot2
#'
#'
#' @param palette Choose from 'ed_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' library(UoEColouR)
#'
#' ggplot(mpg) +
#'  geom_point(aes(x = hwy, y = cty, color = manufacturer)) +
#'  scale_color_uoe("bright")
#'
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
#'
#'
scale_colour_uoe <- function(palette = "bright", discrete = TRUE, alpha = 1, reverse = FALSE, ...) {

  if (discrete) {
    discrete_scale("colour", "ed_col", ed_pal(palette, alpha = alpha, reverse = reverse), ...)
  }
  else {
    scale_color_gradientn(colours = ed_col(palette, 256, alpha = alpha, reverse = reverse), ...)
  }
}



#' Creates a University of Edinburgh fill scale for ggplot2
#'
#' @param palette Choose from 'ed_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams ed_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @examples
#' library(ggplot2)
#' library(UoEColouR)
#'
#' ggplot(aes(x = manufacturer, fill = manufacturer), data = mpg) +
#'   geom_bar() +
#'   scale_fill_uoe()ggplot(diamonds)
#' @export
#'


scale_fill_uoe <- function(palette = "bright", discrete = TRUE, alpha = 1, reverse = FALSE, ...) {

  if (discrete) {
    discrete_scale("fill", "ed_col", ed_pal(palette, alpha = alpha, reverse = reverse), ...)
  }
  else {
    scale_fill_gradientn(colours = ed_col(palette, 256, alpha = alpha, reverse = reverse), ...)
  }
}
