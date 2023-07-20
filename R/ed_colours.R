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
#'




ed_palettes <- list(#Edinburgh University Brand Colour Palettes
  "core" = c("#D50032",
             "#041E42"),
  "bright" = c("#830065",
               "#d0006f",
               "#ad033b",
               "#c25e03",
               "#f9a800",
               "#61bf1a",
               "#0099ab",
               "#29c2de"),
  # A selection of the bright palette intended to work for dichotomous scales
  "bright-two-tone" = c("#830065",
                        "#d0006f",
                        "#f9a800",
                        "#0099ab",
                        "#29c2de"),
  # Note the muted palette is not great for colour blind folk
  "muted" = c("#154734",
              "#004f71",
              "#46877f",
              "#c6dbe9",
              "#949108",
              "#ba8285",
              "#704f45",
              "#692e1f"),
  # A selection of the muted palette intended to work for dichotomous scales
  "muted-two-tone"= c("#004f71",
                      "#c6dbe9",
                      "#949108",
                      "#ba8285",
                      "#692e1f"),
  # Colours optimised for online display per brand guidelines, some poor colourblind choices
  "digital" = c("#a50034",
                "#d0006f",
                "#830065",
                "#6d4f47",
                "#007288",
                "#154734",
                "#333f48",
                "#487a7b",
                "#004f71"),
  # Recruitment colours
  "recruit-ug" = c("#c25e03",
                   "#f9a800",
                   "#61bf1a"),
  "recruit-pg" = c("#830065",
                   "#4a7875",
                   "#c6dbe9"),
  # Recruitment branding with core colours, use with caution, core colours are valuable
  "recuit-ug-core" = c("#d50032",
                  "#c25e03",
                  "#61bf1a",
                  "#f9a800",
                  "#041e42"),
  "recruit-pg-core" = c("#d50032",
                         "#830065",
                         "#4a7875",
                         "#c6dbe9",
                         "#041e42")





  )
