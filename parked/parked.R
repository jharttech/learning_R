library(ggplot2)
library(readr)
library(stringr)
library(tibble)
library(dplyr)
lyrics <- read_file("lyrics/chapman.txt")

lyrics <- str_remove_all(lyrics,"[,'?\"]") |>
  str_replace_all("\n\n"," ") |>
  str_replace_all("\n", " ") |>
  str_to_lower() |>
  str_squish() |>
  str_split(" ")

lyrics <- tibble(word = unlist(lyrics))

lyrics <- lyrics |>
  group_by(word) |>
  summarize(count = n()) |>
  filter(count != 1)

#View(lyrics)

# Create a graph of plots using the ggplot function,
# styled the columns, then set the scale of the y axis
# used the theme function to turn the x axis labels by
# 90 degrees
p <- ggplot(lyrics,
            aes(x = word, y = count)) +
  geom_col(
    color = "blue",
    fill = "lightblue"
  ) +
  scale_y_continuous(breaks = seq(0,40, by = 5)) +
  geom_hline(
    linetype = 1,
    linewidth = .10,
    yintercept = seq(0,40, by = 5),
  ) +
  labs(
    x = "Words",
    y = "Occurrences",
    title = "Occurrence of words"
  ) +
  theme_classic() +
  theme(axis.text.x = element_text(size = 6, angle = 90, hjust = 1, color = "black")) +
  scale_x_discrete(expand = expansion(mult = .03))

# Save the graph into a png called lyrics.png
ggsave("lyrics.png", plot = p)
