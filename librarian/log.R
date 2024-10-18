# Assign csv to data frame
books <- read.csv("books.csv")

# Assign csv to data frame
authors <- read.csv("authors.csv")

# Assign answer text file to a data frame
answers <- read.table("answers.txt")

# Assign the book categories to an object
categories <- unique(books$topic)

################################################################
# In this section we will find the book that The Writer desires

# Assign the author the Writer wants to an object
wanted_author <- "Mia Morgan"

# Put the returned book title into the answers data frame
answers[1,6] <- (subset(books, author == wanted_author)$title)

################################################################

# In this section we will find the book that the Musician desires

# Assign the category the Musicians book is in
topic <- "music"
# Assign the date in which the Musicians book was published
published <- 1613

# Create a subset of books that match the topic the Musician desires
music_books <- subset(books, topic == "Music")
# Create a second subset from the previous one that matches the publishing date
# and insert it into the answers data frame
answers[2,6] <- subset(music_books, year == published)$title

#################################################################

# In this section we will find the book that the Traveler desires

# Assign the first possible author
author_one <- "Lysandra Silverleaf"

# Assign the second possible author
author_two <- "Elena Petrova"

# Assign the year the book was published
published <- 1775

# Create a subset that matches the criteria
answers[3,6] <- subset(books, year == 1775)$title

#################################################################

# In this section we will find the book that the Painter desires

# Assign the mininum number of pages the book can have
page_min <- 200

# Assign the maximum number of pages the book can have
page_max <- 300

# Assign the earliest year the book could have been published
year_one <- 1990

# Assign the latest year the book could have been published
year_two <- 1992

# Create a subset of possible books that have a page length in the range
possible <- subset(books, books$page > page_min & books$page < page_max)

# Create a subset of the possible books that are also in the topic of art
catergory_art <- subset(possible, possible$topic == "Art")

# Create a subset that matches one of the possible publishing years and write it to the answer doc
answers[4,6] <- subset(catergory_art, catergory_art$year == year_one | catergory_art$year == year_two)$title

#################################################################

# In this section we will find the book that the Scientist desires

# Assign the part of the title that the Scientist knows
partial_title <- "Quantum Mechanics"

# Create a subset of books that have Quantum Mechanics in the title then write it to the answer doc
answers[5,6] <- subset(books, grepl(partial_title, books$title))$title

#################################################################

# In this section we will find the book that the Teacher desires

# Set the category the book can be found in
category_edu <- "Education"

# Set the minumum year that the book could have been published in
min_pub <- 1700

# Set the Maximun year that the book could have been published in
max_pub <- 1799

# Set the home town of the auther
town <- "Zenthia"

# Create a subset of authors that have the homwtown set above
town_match <- subset(authors, authors$hometown == town)

# Create a subset of books that are in the desired topic and was published in the year range
pass_one <- subset(books, books$topic == category_edu & (books$year >= min_pub & books$year <= max_pub))

# Create a subset of books from the pass_one data frame that's author is also in the subset of authers from the desired town
answers[6,6] <- subset(pass_one, pass_one$author == town_match[1,1] | pass_one$author == town_match[2,1])$title

# Write the answers data frame back to the answers.txt file
write.table(answers, file="answers.txt", quote = FALSE, sep = " ", row.names = FALSE, col.names = FALSE)
