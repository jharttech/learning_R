# create data frame from csv
chicks <- read.csv("chicks.csv")
View(chicks)
mean(chicks$weight, na.rm = TRUE)

# Get data based on one type of feed
casein_chicks <- chicks[1:3, ]
mean(casein_chicks$weight)

# Better
casein <- chicks$feed == "casein"
casein_chicks <- chicks[casein,]
mean(casein_chicks$weight)

# More examples
linseed <- chicks$feed == "linseed"
linseed_chicks <- chicks[linseed,]
mean(linseed_chicks$weight, na.rm = TRUE)

# Better way to find NA in data frame
which(is.na(chicks$weight)) # Finds which vectors are NA
which(!is.na(chicks$weight)) # Finds which vectors are not NA
# Have data frame only use those rows that do not have NA
chicks <- chicks[!is.na(chicks$weight),]
# Better, use subset
chicks <- subset(chicks, !is.na(weight)) # Would create a subset from chicks that column weight does not contain NA

# Another subset example
soybean_chicks <- subset(chicks, feed == "soybean") # Returns all soybean rows
soybean_chicks

# removing rows will also remove the row name.  Here we correct that
rownames(chicks) # notice missing row names
rownames(chicks) <- NULL # Fixes the row names missing
rownames(chicks) # Ran again to prove point

# Count NAs
sum(is.na(chicks$weight))
