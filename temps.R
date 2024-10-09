# Can load R data files
load("temps.RData")

# Find mean or average
mean(temps)

# Below would give multiple index from vector to create a new vector
temps[c(2,4,7)] # this would get index 2, index 4, index 7

# To remove multiple index from vector
temps[-c(2,4,7)] # This would remove index 2, 4, and 7


# How to find outliers using logical expressions
temps[1] < 0 # will return boolean
# Multiple
temps < 0 # will return boolean logical expression for all temp vectors

# Get which ones are true
which(temps < 0) # would return any temp less than 0
which(temps > 60)

# Better way using logical operators
temps < 0 | temps > 60 # would return all vectors that are below 0 or above 60 as boolean
which(temps < 0 | temps > 60) # would return the index for matches
any(temps < 0 | temps > 60) # would return yes or no if there are any matches
all(temps < 0 | temps > 60) # Are all outliers? if return False then NO

# Find outliers values
temps[which(temps < 0 | temps > 60)] # would return the temps that are outliers

# Remove outliers
temps[-which(temps < 0 | temps > 60)] # Would return without the temps that are outliers

# Subsets
filter <- temps < 0 | temps > 60
# Note can also do filters <- !(temps < 0 | temps > 60) for inverse and would return without outliers
temps[filter] # these 2 lines would return the outliers


# Saving R Data
no_outliers <- temps[!(temps < 0 | temps > 60)]
outliers <- temps[(temps < 0 | temps > 60)]
save(no_outliers, file = "no_outliers.RData")
save(outliers, file = "outliers.RData")





