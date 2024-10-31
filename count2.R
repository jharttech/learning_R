get_votes1 <- function(){
  votes <- as.integer(readline("Enter votes:"))
  # This return is optional as R will return the last computed value
  return(votes)
}


mario <- get_votes1()
peach <- get_votes1()
bowser <- get_votes1()

total <- sum(mario,peach,bowser)
print(paste("Total votes:",total,sep=" "))

# Better

get_votes2 <- function(prompt){
  votes <- as.integer(readline(prompt))
  # This return is optional as R will return the last computed value
  #return(votes)
}

mario <- get_votes2("Mario: ")
peach <- get_votes2("Peach: ")
bowser <- get_votes2("Bowser: ")

total <- sum(mario,peach,bowser)
print(paste("Total votes:",total,sep=" "))

# Using a default parameter value
get_votes3 <- function(prompt = "Enter votes: "){
  # Using a repeat loop
  repeat {
    votes <- suppressWarnings(as.integer(readline(prompt)))
    if (is.na(votes)) {
      return(0)
    } else {
      return(votes)
    }
    #OR
    ifesle(is.na(votes), 0, votes) #Short hand for above
    
    #OR
    if (!is.na(votes)) {
      return(votes)
    }
  }
  
  # This return is optional as R will return the last computed value
  #return(votes)
}

mario <- get_votes3()
peach <- get_votes3()
bowser <- get_votes3()

total <- sum(mario,peach,bowser)
print(paste("Total votes:",total,sep=" "))

# Best
get_votes4 <- function(mario,peach,bowser){
 sum(mario,peach,bowser)
  # This return is optional as R will return the last computed value
  #return(votes)
}


total <- get_votes4(100,100,100)
print(paste("Total votes:",total,sep=" "))


#Note:
  #Data types are called "Storage Modes" in R
  #Some Storage Modes are: as.integer, as.double, as.character
  #sum() function can be used with arrays