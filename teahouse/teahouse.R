# Get users preferred tea flavor of light or bold
flavor <- tolower(readline("What is your taste in flavor? (light or bold) \n"))

# Get users caffeine preference
caffeine <- tolower(readline("Do you prefer caffeination? (yes or no) \n"))

# Use if else statements to make a suggestion based off of the users preferences
if (flavor == "light" & caffeine == "yes"){
  print("You might like Green Tea!")
}else if (flavor == "bold" & caffeine == "yes"){
  print("You might like Black Tea!")
}else if (flavor == "light" & caffeine == "no"){
  print("You might like Chamomile Tea!")
}else if (flavor == "bold" & caffeine == "no"){
  print("You might like Rooibos Tea")
}else {
  print("Please make valid selections!")
}
