# Carpentries color Palette
# Based on Carpentries Brand Identity https://docs.carpentries.org/topic_folders/communications/resources/brand_identity.html

carpentries_colors <- c(
  black = "#383838",
  midnight = "#001483",
  fire = "#FF4955",
  golden = "#FFC700",
  buttercup = "#FFF7F1",
  lake = "#0044d7",
  pond = "#719eff",
  sky = "#E6F1FF",
  dew = "#F5F8FF",
  fog = "#E6EAF0",
  mist = "#E6EEF8",
  sunrise = "#FC757E",
  dawn = "#FFD6D8",
  sunshine = "#FFE7A8"
)

#' Carpentries color palette (discrete)
#'
#' This palette includes 14 colors.
#'
#' @return a function that generates a palette of up to 14 colors.
#' @import scales
#' @export
#'
#' @examples
#'
#' my_palette <- carpentries_pal()
#' my_palette(3)
#'
carpentries_pal <- function() {
  f <- scales::manual_pal(carpentries_colors)
  attr(f, "max_n") <- length(carpentries_colors)
  f

}

#' Carpentries color scales
#'
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
scale_fill_carp <- function(...) {
  discrete_scale("fill", "carpentries", carpentries_pal(), ...)
}

#' @export
#' @rdname carpentries_palette
scale_color_carpentries <- function(...) {
  discrete_scale("colour", "carpentries", carpentries_pal(), ...)
}

#' @export
#' @rdname carpentries_palette

scale_color_carpentries <- scale_color_carpentries

# two_colors <- c(carp_fire, carp_lake)
# three_colors <- c(carp_fire, carp_lake, carp_golden)
# four_colors <- c(carp_fire, carp_lake, carp_golden, carp_midnight)
# five_colors <- c(carp_fire, carp_lake, carp_golden, carp_midnight, carp_black)
