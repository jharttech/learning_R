# Readthe tests.tsv table and add it to an object called tests
tests <- read.table("tests.tsv", sep="\t", header=TRUE)

# Convert the gender number to english
converted <- factor(
  tests$gender,
  labels = c("Unanswered","Male","Female","Other"),
)

# Write the english version of gender back into the column
tests[,2] <- converted

# Sum the data results for each section
tests$extroversion <- round(
  ((tests$E1 + tests$E2 + tests$E3) / as.integer(15)),
  digits=2
)
tests$neuroticism <- round(
  ((tests$N1 + tests$N2 + tests$N3) / as.integer(15)),
  digits=2
)
tests$agreeableness <- round(
  ((tests$A1 + tests$A2 + tests$A3) / as.integer(15)),
  digits=2
)
tests$conscientiousness <- round(
  ((tests$C1 + tests$C2 + tests$C3) /as.integer(15)),
  digits=2
)
tests$openness <- round(
  ((tests$O1 + tests$O2 + tests$O3) / as.integer(15)),
  digits=2
)

# Write table back to new csv file
write.csv(tests, file="analysis.csv", row.names = FALSE)
