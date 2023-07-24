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
#'   labs(
#'     title = "Fuel economy declines as weight increases",
#'     subtitle = "(1973-74)",
#'     caption = "Data from the 1974 Motor Trend US magazine.",
#'     tag = "Figure 1",
#'     x = "Weight (1000 lbs)",
#'     y = "Fuel economy (mpg)",
#'     colour = "Gears"
#'   )
#'
theme_carpentries <- function() {
  theme_bw(base_size = 12) %+replace%
    theme(
      plot.title =
        element_text(size = 14, face = "bold", hjust = 0.5,
                     margin = margin(0, 0, 15, 0)),
      axis.text = element_text(size = 9),
      axis.text.x = element_text(angle = 0, vjust = 0.5),
      axis.text.y = element_text(size = 9),
      axis.title = element_text(face = "bold", vjust = 0.5),
      strip.text = element_text(face = "bold"),
      strip.background = element_blank(),
      panel.grid = element_blank(),
      legend.position = "top"

    )
}
