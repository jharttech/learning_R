library(tidyverse)
load("anita.RData")

p <- ggplot(anita, aes(x = timestamp, y = wind)) +
  geom_path(
    linetype = 2,
    linewidth = .25
  ) + # could use geom_line() for same result in this case
  # of the line
  geom_point(
    color = "maroon"
  ) +
  # Create a horizontal line
  geom_hline(
    linetype = 5,
    linewidth = .10,
    yintercept = 65
  ) +
  labs(
    x = "Date",
    y = "wind Speed (Knots)",
    title = "Hurricane Anita"
  ) +
  theme_classic()
  
ggsave("anita.png", plot = p, width = 1200, height = 900, units = "px")

# NOTE: Order of the geometery does matter, they behave like transparency
# slides

# linetype()
# linewidth()