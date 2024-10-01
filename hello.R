# Using readline() to accept user input
# Asks user for name
name <- readline("What is your name user? ")

# Use paste function for concatenation
# Assigns the paste function to a variable
greeting <- paste("Hello,",name,sep=" ")

# variable <- assignment

#print("Hello World")

# use ?paste or ?function to get info about said function

# If you want paste with sep="" you can use paste0()
print(greeting)


#Could do the following
print(paste0("Hello, ",name))

#Consolidated could be as follows
print(paste0("Hello, ",readline("What is your name user? ")))