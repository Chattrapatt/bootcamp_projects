#Parameter
win = 0
loss = 0
tie = 0
round = 0

while (round<100) {
  print("Rock Paper Scissor!")
  print("Choose number : 1 = rock  2 = paper  3 = scissors ")
  User_Choice <- readLines("stdin", n=1) #recieve 1 Parameter

  s_random <- sample(1:3, size = 1)
  
  if (User_Choice == 1 & s_random == 1 ){
  print("tie")
  tie = tie + 1
}  else if (User_Choice == 1 & s_random == 2 ){
  print("You loss")
  loss = loss + 1
} else if (User_Choice == 1 & s_random == 3 ){
  print("You win")
  win = win + 1
} else if (User_Choice == 2 & s_random == 1 ){
  print("You win")
  win = win + 1
} else if (User_Choice == 2 & s_random == 2 ){
  print("Tie")
  tie = tie + 1
} else if (User_Choice == 2 & s_random == 3 ){
  print("You loss")
  loss = loss + 1
} else if (User_Choice == 3 & s_random == 1 ){
  print("You loss")
  loss = loss + 1
} else if (User_Choice == 3 & s_random == 2 ){
  print("You win")
  win = win + 1
} else if (User_Choice == 3 & s_random == 3 ){
  print("Tie")
  tie = tie + 1
} else if (User_Choice > 3){
  print("Invalid number... Try again!")
}
print("Want to play again ?")
print("1 = Yes // 2 = No")
question <- readLines("stdin", n=1)
if (question == 2){
  break
} 
round <- round + 1  
}
print(paste(win, "Win", loss, "Loss", tie, "Tie"))
