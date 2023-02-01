print("Welcome to Pao Ying Chub Game!")
username = input("What is your name: ")
print(f"Hello {username}!")

#01
action_lists = ["Paper", "Scissors", "Rock"]
win = 0
lose = 0
draw = 0
is_play = 1

while True:
    your_action = input("What is your choose? [Paper, Scissors, Rock]: ")
    if your_action.upper() == "PAPER":
        print("You : Paper")
    elif your_action.upper() == "SCISSORS":
        print("You : Scissors")
    elif your_action.upper() == "ROCK":
        print("You : Rock")
    else:
        print("Sorry we don't have this choice")
        break
#02
    import random

    bots_lists = ["Paper", "Scissors", "Rock"]
    bots = random.choice(bots_lists)
    print(f"Bot: {bots}")

#03
    if your_action.upper() == "PAPER":
        if bots == "Rock":
            win += 1
            print("Congratulations, You win!")
        elif bots == "Scissors":
            lose += 1
            print("You lose")
        else:
            draw += 1
            print("You draw")

    elif your_action.upper() == "SCISSORS":
        if bots == "Paper":
            win += 1
            print("Congratulations, You win!")
        elif bots == "Rock":
            lose += 1
            print("You lose")
        else:
            draw += 1
            print("You draw")

    else:
        if bots == "Scissors":
            win += 1
            print("Congratulations, You win!")
        elif bots == "Paper":
            lose += 1
            print("You lose")
        else:
            draw += 1
            print("You draw")

#04
    q_games = input("Would you like to play more games? Yes[1], No[2]: ")
    if q_games == "1":
        print("You want to play the game again")
    elif q_games == "2":
        print("You don't want to play games again")
        is_play = 0
        break
    else:
        print("Sorry we don't have this choice")
        is_play = 0
        break

#05
print(F"Played", win+lose+draw, "time(s)", "Win", win, "time(s)","Lose", lose, "time(s)", "Draw", draw,"time(s)")
