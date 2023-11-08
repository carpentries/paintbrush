#' Carpentries GGPlot2 Theme
#'
#' @import ggplot2
#' @export
#'
#' @examples
#'
#' mtcars2 <- within(mtcars, {
#'   vs <- factor(vs, labels = c("V-shaped", "Straight"))
#'   am <- factor(am, labels = c("Automatic", "Manual"))
#'   cyl  <- factor(cyl)
#'   gear <- factor(gear)
#' })
#'
#' p1 <- ggplot(mtcars2) +
#'   geom_point(aes(x = wt, y = mpg, colour = gear)) +
#'   theme_carpentries()
#'
theme_carpentries <- function() {
  theme_bw(base_size = 12) %+replace%
    theme(
      plot.title =
        element_text(size = 14, face = "bold", hjust = 0.5,
                     margin = margin(0, 0, 15, 0)),
      axis.text.x = element_blank(),
      axis.ticks = element_blank(),
      axis.title = element_text(face = "bold", vjust = 0.5),
      strip.text = element_text(face = "bold"),
      strip.background = element_blank(),
      panel.grid = element_blank(),
      legend.position = "top"

    )
}
