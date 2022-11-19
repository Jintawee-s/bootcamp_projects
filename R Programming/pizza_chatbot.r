#chatbot (rule-based)
#ordering pizza 
#8-10 dialogs

print("Welcome to our app!")
print("Hello There!")

#question 01
print("What's your name?")
user_name <- readLines("stdin", n=1)

print(paste("Hi", user_name))

#question 02
orders <- list("Hawaiian", "Seafood cocktail")
while (1) {
print("What pizza topping would you like today?")
print("1. Hawaiian, 2. Seafood cocktail")
  action <- readLines("stdin", n=1)
  if (action == 1) {
    print("You choose Hawaiian pizza.")
    break
  } else if (action == 2) {
    print ("You choose Seafood cocktail pizza.")
    break
  } else {
    print ("Sorry we don't have this choice.")
  }
}

#question 03
s_orders <- list("small", "medium", "large")
c_orders <- list(150, 250, 380)
while (1) {
print("What size pizza would you like?")
print("1. Small 8.5 inch (150 THB), 2. Medium 12 inch (250 THB), 3. Large 16 inch (380 THB)")
   size <- readLines("stdin", n=1)
   if (size == 1) {
     print("You choose small size.")
     break
   } else if (size == 2) {
       print ("You choose medium size.")
       break
   } else if (size == 3) {
       print("You choose large size.")
       break
   } else {
       print ("Sorry we don't have this choice.")
   }
 }

# #question 04
print("How many pizza(s) you want to order?")
n_orders <- readLines("stdin", n=1)

print(paste(n_orders, "pizza(s)"))

#question 05
while (1) {
print("Would you like to get a soft drink too?")
print("1. Yes, 2. No")
  q_softDrink <- readLines("stdin", n=1)
  if (q_softDrink == 1) {
    print("You want to get soft drinks.")
    break
  } else if (q_softDrink == 2) {
      print("You don't want to get soft drinks.")
      break
  } else {
      print ("Sorry we don't have this choice.") 
  }
}

#question 06
while (q_softDrink == 1) {
print("What kind of soft drink would you like?")
print("1. Pepsi (20 THB), 2. Sprite (20 THB)")
  k_softdrink <- readLines("stdin", n=1)
  if (k_softdrink == 1) {
    print("You want Pepsi.")
    break
  } else if (k_softdrink == 2) {
    print("You want Sprite.")
    break
    } else {
      print ("Sorry we don't have this choice.") 
  }
}

#question 07
softDrinks <- list("Pepsi", "Sprite")
if (q_softDrink == 1) {
  print(paste("How many", softDrinks[as.numeric(k_softdrink)] ,"do you want?"))
  #print(paste("How many", softDrinks[strtoi(k_softdrink,base=10)] ,"do you want?"))
  n_softDrink <- readLines("stdin", n=1)  
}

#result the order
if (q_softDrink == 2) {
  print(paste(user_name,"'s orders :", n_orders, s_orders[as.numeric(size)] , orders[as.numeric(action)] , "pizza(s)"))

  pricing1 <- as.numeric(n_orders)*as.numeric(c_orders[as.numeric(size)])
    
  print(paste("Total price :", pricing1, "THB"))
  
  } else {
    print(paste(user_name,"'s orders :", n_orders, s_orders[as.numeric(size)] , orders[as.numeric(action)], "pizza(s) and", n_softDrink, softDrinks[as.numeric(k_softdrink)]))

  pricing2 <- as.numeric(n_orders)*as.numeric(c_orders[as.numeric(size)]) + as.numeric(n_softDrink)*20 
    
  print(paste("Total price :", pricing2, "THB"))  
}
