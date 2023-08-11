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

# continuous_palette <- colorRampPalette(carpentries_colors)
# n_colors <- 100
# continuous_colors <- continuous_palette(n_colors)
# barplot(rep(1, n_colors), col = continuous_colors, border = NA, space = 0)

#' Carpentries color palette (discrete)
#'
#' This palette includes 14 colors.
#'
#' @return a function that generates a palette of up to 14 colors.
#' @import scales
#' @rdname colors
#' @export
#'
#' @examples
#'
#' my_palette <- carpentries_pal()
#' my_palette(3)
#'
carpentries_pal <- function(n = 100, discrete = TRUE) {
  if (discrete) {
    f <- scales::manual_pal(carpentries_colors)
    attr(f, "max_n") <- length(carpentries_colors)
    f
  } else {
    continuous_palette <- colorRampPalette(carpentries_colors)
    continuous_colors <- continuous_palette(n)
    scales::manual_pal(continuous_colors)
  }




}

#' Create a color scale for filling based on the Carpentries palette
#'
#' @param palette A string specifying the palette to use (default is "carpentries_pal").
#' @param alpha Alpha value for transparency (default is 1).
#' @param discrete Logical indicating if the scale should be discrete (default is FALSE).
#' @param ... Additional arguments passed to underlying functions.
#' @return A ggplot2 scale for filling
#' @rdname colors
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mtcars, aes(wt, mpg))
#' p + geom_point(size = 4, aes(colour = factor(cyl))) +
#'     scale_color_carpentries(discrete = TRUE) +
#'     theme_bw()
#'
#' data <- data.frame(
#' x = 1:10,
#' y = seq(1, 5, length.out = 10),
#' category = factor(rep(1:2, each = 5)))
#'
#' p_fill_discrete <-  ggplot(data, aes(x, y, fill = category)) +
#' geom_bar(stat = 'identity') +
#' scale_fill_carpentries(discrete = TRUE) +
#' theme_carpentries()
#'
#' p_fill_discrete
#'
#' p_fill_continuous <-  ggplot(data, aes(x, y, fill = category)) +
#' geom_bar(stat = 'identity') +
#' scale_fill_carpentries(discrete = FALSE) +
#' theme_carpentries()
#'
#' p_fill_continuous
#'
#'
scale_fill_carpentries <-
  function(palette = "carpentries_pal",
           alpha = 1,
           discrete = FALSE,
           ...) {
    palette <- match.arg(palette)
    if (discrete) {
      discrete_scale("fill",
                     "carpentries",
                     carpentries_pal(discrete = TRUE),
                     ...)
    } else {
      continous_scale(
        ...,
        colors = carpentries_pal(discrete = FALSE),
        values = NULL,
        space = "Lab",
        na.value = "grey50",
        guide = "colourbar",
        aesthetics = "fill"
      )
    }
  }

#' Create a color scale for color based on the Carpentries palette
#'
#' @param palette A string specifying the palette to use (default is "carpentries_pal").
#' @param alpha Alpha value for transparency (default is 1).
#' @param discrete Logical indicating if the scale should be discrete (default is FALSE).
#' @param ... Additional arguments passed to underlying functions.
#' @return A ggplot2 scale for filling
#' @rdname colors
#'
#' @export
#'
#' @examples
#' data <- data.frame(
#' x = 1:10,
#' y = seq(1, 5, length.out = 10),
#' category = factor(rep(1:2, each = 5)))
#'
#' p_color_discrete <- ggplot(data, aes(x, y, color = category)) +
#' geom_line() +
#' scale_color_carpentries(discrete = TRUE) +
#' theme_carpentries()
#'
#' p_color_discrete
#'
#'p_color_continuous <- ggplot(data, aes(x, y, color = category)) +
#' geom_line() +
#' scale_color_carpentries(discrete = FALSE) +
#' theme_carpentries()
#'
#' p_color_continuous
#'
#'
scale_color_carpentries <-
  function(palette = "carpentries_pal",
           alpha = 1,
           discrete = FALSE,
           ...) {
    palette <- match.arg(palette)
    if (discrete) {
      discrete_scale("colour",
                     "carpentries",
                     carpentries_pal(discrete = TRUE),
                     ...)
    } else {
      scale_color_gradientn(
        ...,
        colors = carpentries_pal(discrete = FALSE),
        values = NULL,
        space = "Lab",
        na.value = "grey50",
        guide = "colourbar",
        aesthetics = "color"
      )
    }
  }



# two_colors <- c(carp_fire, carp_lake)
# three_colors <- c(carp_fire, carp_lake, carp_golden)
# four_colors <- c(carp_fire, carp_lake, carp_golden, carp_midnight)
# five_colors <- c(carp_fire, carp_lake, carp_golden, carp_midnight, carp_black)
