# Get users preferred temperature of coffee
temp <- tolower(readline("Do you like hot or iced coffee? (hot/iced) \n"))

# Get users preference between caffeine or decaf
caffeine <- tolower(readline("Do you like your coffee to have cafeine? (y/n) \n"))

# Get users preference on dark or light roast
darkness <- tolower(readline("Do you like your coffee light or dark roasted? (light/dark) \n"))

# Set initial part of response to save typing
phrase <- "You would probably like"

# Use if else statements to provide a recommended coffee
if (temp == "hot" & caffeine == "y" & darkness == "dark"){
  paste(phrase, "an Caffe Americano coffee!")
}else if (temp == "hot" & caffeine == "y" & darkness == "light"){
  paste(phrase, "a Blonde Roast coffee!")
}else if (temp == "hot" & caffeine == "n" & darkness == "dark"){
  paste(phrase, "a Decaf Americano coffee!")
}else if (temp == "hot" & caffeine == "n" & darkness == "light"){
  paste(phrase, "a Decaf Willow Blend coffee!")
}else if (temp == "iced" & caffeine == "y" & darkness == "dark"){
  paste(phrase, "a Iced Caffe Americano coffee!")
}else if (temp == "iced" & caffeine == "y" & darkness == "light"){
  paste(phrase, "an Iced Flat White coffee!")
}else if (temp == "iced" & caffeine == "n" & darkness == "dark"){
  paste(phrase,  "an Iced Dark Decaf coffee!")
}else if (temp == "iced" & caffeine == "n" & darkness == "light"){
  paste(phrase, "a Decaf Iced Flat White coffee!")
}else{
  print("Please use valid answers!")
}
