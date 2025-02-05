# Load the needed libraries
library(ggplot2)
library(readr)
# Load the csv data to a new tibble called lang
lang <- read_csv("stats.csv")

# Create the table from the lang tibble using ggplot() function
p <- ggplot(
  lang,
  # Set which columns go to which axis
  aes(x = language, y = percent_devs)
  ) +
  # Set the graph type and colors
  geom_col(
    color = "black",
    fill = "maroon",
  ) +
  # Set the y scale
  scale_y_continuous(
    breaks = seq(0, 100, by = 10)
  ) +
  # Set the horizonal line properties
  geom_hline(
    linetype = 3,
    linewidth = .10,
    yintercept = seq(0, 100, by = 10)
  ) +
  # Set the labels and title for for each axis and for the graph
  labs(
    x = "Languages",
    y = "Percent",
    title = "Programming Languages Used by Developers"
  ) +
  # Set the theme
  theme_dark() +
  # Fine tune the theme and set the language names to 45 degree
  theme(axis.text.x = element_text(angle = 45, hjust = 1,)) +
  # Create an annotation about where the data was obtained from
  annotation_custom(
    grob = grid::textGrob(
    "*Data derived from the responses of over 65,000 developers who participated in the StackOverflow survey.", 
    gp = grid::gpar(fontsize = 6)
    ),
    ymin = Inf,
    ymax = 50,
    xmin = -Inf,
    xmax = Inf
  )

# Save the plot/graph into a file called visualization.png
ggsave("visualization.png", plot = p)

# Debug
#View(lang)
