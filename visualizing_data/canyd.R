load("candy.RData")

# create the ggplot
ggplot(candy,
       aes(x = price_percentile,
           y = sugar_percentile)
       ) +
  #geom_point() # makes a new point for each data point
  geom_jitter(
    color = "darkorchid", # color of the points
    shape = 21, # Must be a number value ubless basic shapes (ex.circle)
    fill = "orchid",
    size = 2 # size of the points
  ) + # Used to expose overlapping points
  labs(
    x = "Price",
    y = "Sugar",
    title = "Price and Sugar"
  ) +
  theme_classic()

