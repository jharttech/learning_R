# Install tidyr package to help tidy up data
install.packages("tidyr")
library("dplyr")
students <- read.csv("students.csv")

# Use pivot_wider from tidyr to convert row data to columns
# NOTE use pivot_longer to convert column data that should be rows
students <- tidyr::pivot_wider(
    students,
    id_cols = student,
    names_from = attribute,
    values_from = value
)

# Convert GPA to number instead of Char
students$GPA <- as.numeric(students$GPA)

# create groups by major
students |>
    group_by(major) |>
    summarize(GPA = mean(GPA))

View(students)