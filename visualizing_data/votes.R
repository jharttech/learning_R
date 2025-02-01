library(tidyverse)
votes <- read.csv("votes.csv")

# Use ggplot to plot data to graph, aes() stands for aesthetics
ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col()

# Use scales and limits to change the graph 
ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col() + 
  scale_y_continuous(limits = c(0, 250))

# Add or edit labels using labs
ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col() + 
  scale_y_continuous(limits = c(0, 250)) + 
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  )


# Change plot colors using aes()
ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col(aes(fill = candidate)) + 
  scale_y_continuous(limits = c(0, 250)) + 
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  )

# Change plot colors using aes() for COLOR BLIND called Viridis Scale
ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col(aes(fill = candidate)) + 
  scale_fill_viridis_d("Candidate") + # the Cadidate portion is how to title the key
  scale_y_continuous(limits = c(0, 250)) + 
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  )

# Change theme using theme_* functions (There are several)
ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col(aes(fill = candidate)) + 
  scale_fill_viridis_d("Candidate") + # the Cadidate portion is how to title the legend
  scale_y_continuous(limits = c(0, 250)) + 
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  ) +
  theme_classic()

# Tell the graph not to show a legend
ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col(aes(fill = candidate),
           show.legend = FALSE
           ) + 
  scale_fill_viridis_d("Candidate") + # the Cadidate portion is how to title the legend
  scale_y_continuous(limits = c(0, 250)) + 
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  ) +
  theme_classic()

# store in an object
p <- ggplot(votes, aes(x = candidate, y = votes)) +
  # Add Column data to the graph
  geom_col(aes(fill = candidate),
           show.legend = FALSE
  ) + 
  scale_fill_viridis_d("Candidate") + # the Cadidate portion is how to title the legend
  scale_y_continuous(limits = c(0, 250)) + 
  labs(
    x = "Candidate",
    y = "Votes",
    title = "Election Results"
  ) +
  theme_classic()

# Save the plot
ggsave("votes.png", plot = p, width = 1200, height = 900, units = "px")

# NOTES: 
#   aes() stands for aesthetics
#   Scales
#     Continuous - for values that fall in some range (ex. votes)
#     Discrete - for values that fall into categories (ex. candidates)
#     Limits - the upper and lower limit of the scale
#     scale_x_continuous
#     scale_y_continuous
#     scale_x_discrete
#     scale_y_discrete
