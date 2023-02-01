class ATM:
    # double underscore => dunder
    def __init__(self, name, password, balance):
        self.name = name
        self.password = password
        self.balance = balance

    def check_balance(self):
        message_balance = f"Account: {self.name}, Balance: {self.balance} THB"
        print(message_balance)

    def check_acc(self):
        message_acc = f"Account: {self.name}, Password: {self.password}"
        print(message_acc)

    def deposit(self, money):
        self.balance += money
        print(f"New Balance: {self.balance} THB")
        print("Deposit successfully.")

    def transfer(self, money):
        self.balance -= money
        print(f"New Balance: {self.balance} THB")
        print("Transfer successfully.")

    def withdraw_without_card(self, money):
        while True:
            password = input("Enter your password: ")
            if str(self.password) == str(password):
                self.balance -= money
                print(f"New Balance: {self.balance} THB")
                print("Withdraw successfully.")
                break
            else:
                print("Your password is wrong!")

    def bill_with_fee(self, money):
        bill = int(input("Will you pay for Electric bill[1] or Water bill[2]: "))
        if bill == 1:
            self.balance -= money + 15
            print(f"New Balance: {self.balance} THB")
            print("Electric bill successfully")
        elif bill == 2:
            self.balance -= money + 10
            print(f"New Balance: {self.balance} THB")
            print("Water bill successfully")
        else:
            print("Sorry we don't have this choice")

    def change_name(self, new_acc_name):
        self.name = new_acc_name
        print(f"New Name: {self.name}")
        print("Your account name has been changed.")

    def change_password(self, new_password):
        self.password = new_password
        print(f"New Password: {self.password}")
        print("Your password has been changed.")
