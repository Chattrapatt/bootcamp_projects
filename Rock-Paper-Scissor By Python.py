import random
rock = "Rock"
paper = "Paper"
scissors = "Scissors"
game_images = [rock, paper, scissors]
w = 0
l = 0
d = 0


while True:
  user_choice = int(input("What do you choose? Type 0 for Rock, 1 for Paper or 2 for Scissors.\n"))
  print(f"You Choose: {user_choice}")
  
  computer_choice = random.randint(0, 2)
  print("Computer chose:")
  print(game_images[computer_choice])

  
  if user_choice >= 3 or user_choice < 0: 
      print("You typed an invalid number, you lose!") 
  elif user_choice == 0 and computer_choice == 2:
      print("You win!")
      w = w + 1
  elif computer_choice == 0 and user_choice == 2:
      print("You lose")
      l = l + 1
  elif computer_choice > user_choice:
      print("You lose")
      l = l + 1
  elif user_choice > computer_choice:
      print("You win!")
      w = w + 1
  elif computer_choice == user_choice:
      print("It's a draw")
      d = d + 1

  print("Play again? (1 = YES/2 = NO)")
  next_action = input()

  if next_action == "2":
    break

print(f"You win:",w, "times")
print(f"You lose:",l, "times")
print(f"You draw:", d, "times")
