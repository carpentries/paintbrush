# Carpentries color Palette
# Based on Carpentries Brand Identity https://docs.carpentries.org/topic_folders/communications/resources/brand_identity.html

carp_colors <- c(
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

# manual_pal() needs to be imported from scales
#' Title
#'
#' @return
#' @import scales
#' @export
#'
#' @examples
carp_pal <- function() {
  f <- scales::manual_pal(carp_colors)
  attr(f, "max_n") <- length(carp_colors)
  f

}

# two_colors <- c(carp_fire, carp_lake)
# three_colors <- c(carp_fire, carp_lake, carp_golden)
# four_colors <- c(carp_fire, carp_lake, carp_golden, carp_midnight)
# five_colors <- c(carp_fire, carp_lake, carp_golden, carp_midnight, carp_black)
