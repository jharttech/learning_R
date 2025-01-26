install.packages("dplyr")
library("dplyr")
# Use select function from dplyr package
dplyr::select(
    storms,
    !c(lat, long, pressure, tropicalstorm_force_diameter,
    hurricane_force_diameter)
) #NOTE The ! means I do not want

# Use helpers to select or remove columns
dplyr::select(
    storms,
    !c(lat, long, pressure, ends_with("diameter"))
) #NOTE The ! means I do not want

# Use the filter function from dplyr
dplyr::filter(
    dplyr::select(
        storms,
        !c(lat, long, pressure, ends_with("diameter"))
    ),
    status == "hurricane" # filter for only the status column
)

# Use pipe in R there are 2 versions of pipe in R ( |> and %>%)
storms |> select(!c(lat, long, pressure, ends_with("diameter"))) |> 
    filter(status == "hurricane")

# Use arrage function from dplyr
storms |> select(!c(lat, long, pressure, ends_with("diameter"))) |> 
    filter(status == "hurricane") |>
    arrange(desc(wind)) # Allows arrange in desceding order

# Use arrage function from dplyr
storms |> select(!c(lat, long, pressure, ends_with("diameter"))) |> 
    filter(status == "hurricane") |>
    arrange(desc(wind), name) # Arranges by wind, then if same by name in alpha

# Use distinct function from dplyr
storms |> select(!c(lat, long, pressure, ends_with("diameter"))) |> 
    filter(status == "hurricane") |>
    arrange(desc(wind), name) |>
    distinct(name, year) # Drops all other columns

# Use arrage function from dplyr
storms |> select(!c(lat, long, pressure, ends_with("diameter"))) |> 
    filter(status == "hurricane") |>
    arrange(desc(wind), name) |>
    distinct(name, year, .keep_all = TRUE) # Keeps the other columns

# Save to an object then write the desired data to CSV
hurricanes <- storms |> select(!c(lat, long, pressure, ends_with("diameter"))) |> 
    filter(status == "hurricane") |>
    arrange(desc(wind), name) |>
    distinct(name, year, .keep_all = TRUE)

hurricanes |>
select(c(year, name, wind)) |>
write.csv("hurricanes.csv", row.names = FALSE)

h_data <- read.csv("hurricanes.csv")
View(h_data)

# Group data by year, next arrange within each group,
# then use slice_head to pull out the first row in each group
h_data |> group_by(year) |>
    arrange(desc(wind)) |>
    slice_head()

# OR

h_data |> group_by(year) |>
    slice_max(order_by = wind)

# Filter by years in a range
h_data |> group_by(year) |>
    slice_max(order_by = wind) |>
    filter(year >= 1980 & year <= 1990)

# Use the summarize function
h_data |> group_by(year) |>
    summarize(n()) # the n is a function to count rows

# OR
h_data |> group_by(year) |>
    summarize(hurricanes = n()) # names the new row

# use slice_max for wind speed
h_data |> group_by(year) |>
    slice_max(order_by = wind)

# ungroup the data
h_data |> group_by(year) |>
    slice_max(order_by = wind) |>
    ungroup()

#NOTE: you do not have to specify the package name so long as another package
# does not have a function with the same name
# slice_head = first row
# slice_tail = last row
# slice_max = returns highest
# slice_min = returns lowest