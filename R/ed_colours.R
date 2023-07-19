#' University of Edinburgh Brand Colours
#'
#' A collection of colour palettes sourced from the University of Edinburgh Brand Colour Palette
#'
#' @examples
#' # Generate a plot using the default Edinburgh Bright palette
#' library(ggplot2)
#' ggplot(aes(x = hwy, y = cty, colour = manufacturer ), data = mpg) +
#'   geom_point() +
#'   scale_colour_uoe()
#'
#'
#' @export



ed_colours <- c(
  "university red" = "#D50032",
  "university blue" = "#041E42",
  "bright pink" = "#D0006F",
  "bright orange" = "#C25E03",
  "bright yellow" = "#F9A800",
  "bright green" = "#61BF1A",
  "bright red"  = "#AD033B",
  "bright blue" = "#29C2DE",
  "bright blue blue" = "#0099AB",
  "bright purple" = "#830065",
  "muted brown" = "#704F45",
  "muted turquoise" = "#46877F",
  "muted green" = "#154734",
  "muted red brown" = "#692E1f",
  "muted light blue" = "#c6dbe9",
  "muted pink" = "#BA8285",
  "muted yellow" = "#949108",
  "muted blue" = "#004F71",
  "digital bright blue" = "#007288",
  "digital burgandy" = "#A50034",
  "digital jade" = "#487a7b",
  "digital muted brown" = "#6D4F47",
  "digital spruce grey" = "#333F48",
  "recruit pg blue" = "#004F71",
  "recruit pg teal" = "#4a7875"

)


#' uoe_colour
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



ed_palettes <- list(
  `core` = uoe_colour("university red", "university blue"),
  `bright` = uoe_colour("bright pink", "bright orange", "bright yellow", "bright green", "bright red", "bright blue", "bright blue blue", "bright purple"),
  `muted` = uoe_colour("muted brown", "muted turquoise", "muted green", "muted red brown", "muted light blue", "muted pink", "muted yellow", "muted blue"),
  `digitalall` = uoe_colour("university red", "university blue", "digital bright blue", "bright pink", "bright purple", "digital burgandy", "muted green", "digital jade", "muted blue", "digital muted brown", "digital spruce grey"),
  `digital` = uoe_colour("digital bright blue", "bright pink", "bright purple", "digital burgandy", "muted green", "digital jade", "muted blue", "digital muted brown", "digital spruce grey"),
  `recruitall` = uoe_colour("university red", "recruit pg blue", "university blue", "bright orange", "bright yellow", "bright green", "bright purple", "muted light blue", "recruit pg teal"),
  `recruitug` = uoe_colour("university red", "university blue", "bright orange", "bright yellow", "bright green"),
  `recruitpg` = uoe_colour("recruit pg blue", "university blue", "bright purple", "muted light blue", "recruit pg teal")

)
