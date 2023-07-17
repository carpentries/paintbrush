theme_carp <- function() {
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
