VARIABLES, DATA TYPES, OPERATORS
num = input("Enter a number:")
if num.isdigit():
    total = 0
    for digit in num:
        total += int(digit)
    print("The total of the number is:",total)
else:
    print("Enter a valid number")

num = input("Enter a number:")
if num.isdigit():
    revnum = num[::-1]
    print(revnum)
else:
    print("Enter a valid input")

meter = float(input("Enter the value to be converted in meters:"))
cm = meter*100
feet = meter*3.28084
inches = meter*39.3701

print("In centimeters",cm)
print("In feets:",feet)
print("In inches:",inches)

math = int(input("Enter math mark:"))
phy = int(input("Enter Physics mark:"))
chem = int(input("Enter chemistry mark:"))
eng = int(input("Enter English mark:"))
comp = int(input("Enter computer mark:"))

total = math+phy+chem+eng+comp
avg = total/5
per = (total/500)*100

if per >= 90:
    grade = "A+"
elif per >= 80:
    grade = "A"
elif per >= 70:
    grade = "B"
elif per >= 60:
    grade = "C"
elif per >= 50:
    grade = "D"
else:
    grade = "F"
print(f"Total Marks: {total}")
print(f"Average Marks: {avg}")
print(f"Percentage: {per:.2f}%")
print(f"Grade: {grade}")

CONDITIONALS

year = int(input("Enter the year:"))
if (year%4==0) and (year%100!=0 or year%400==0):
    print(f"{year} is a leap year")
else:
    print(f"{year} is not a leap year")

num1 = float(input("Enter first number: "))
operator = input("Enter operator (+, -, *, /): ")
num2 = float(input("Enter second number: "))

if operator == '+':
    result = num1 + num2
    print("Result:", result)
elif operator == '-':
    result = num1 - num2
    print("Result:", result)
elif operator == '*':
    result = num1 * num2
    print("Result:", result)
elif operator == '/':
    if num2 != 0:
        result = num1 / num2
        print("Result:", result)
    else:
        print("Error: Division by zero is not allowed.")
else:
    print("Invalid operator")

a = float(input("Enter side 1: "))
b = float(input("Enter side 2: "))
c = float(input("Enter side 3: "))

if a + b > c and a + c > b and b + c > a:
    print("its a triangle")
else:
    print("its not a triangle.")

bill = float(input("Enter total bill amount:"))
people = int(input("Enter number of people: "))
tip_per = float(input("Enter tip percentage: "))
tip_amt = bill * (tip_per / 100)
total_with_tip = bill + tip_amt
amt_per_person = total_with_tip / people
print(f"Tip amount: Rs.{tip_amt:.2f}")
print(f"Total bill with tip: Rs.{total_with_tip:.2f}")
print(f"Amount per person: Rs.{amt_per_person:.2f}")

for num in range(2, 101):  
    is_prime = True
    for i in range(2, num):
        if num % i == 0:
            is_prime = False
            break
    if is_prime:
        print(num, end=" ")

text = input("Enter a string: ")
if text == text[::-1]:
    print("It's a palindrome")
else:
    print("It's not a palindrome")

n = int(input("Enter the number:"))
n1 = 0
n2 = 1
while(n!=0):
    print(n1)
    n3 = n1+n2
    n1 = n2
    n2 = n3
    n -= 1

num = int(input("Enter a number: "))
for i in range(1, 11):
    print(f"{num} x {i} = {num * i}")

import random
secret_number = random.randint(1,100)
print("Number Guessing Game")
print("I'm thinking of a number between 1 and 100.")

while True:
    guess = int(input("Enter your guess: "))

    if guess < secret_number:
        print("Too Low! Try again.\n")
    elif guess > secret_number:
        print("Too High! Try again.\n")
    else:
        print(f"Correct! The number was {secret_number}.")
        break

balance = 2000

while True:
    print("\n--- Menu ---")
    print("1. Deposit")
    print("2. Withdraw")
    print("3. Check Balance")
    print("4. Exit")

    choice = input("Enter your choice (1-4): ")

    if choice == '1':
        amount = float(input("Enter amount to deposit: "))
        if amount > 0:
            balance += amount
            print(f"Rs.{amount} deposited. New balance: Rs.{balance}")
        else:
            print("Invalid amount")

    elif choice == '2':
        amount = float(input("Enter amount to withdraw: "))
        if amount <= balance and amount > 0:
            balance -= amount
            print(f"Rs.{amount} withdrawn. Remaining balance: Rs.{balance}")
        else:
            print("Insufficient balance or invalid amount.")

    elif choice == '3':
        print(f"Current balance: Rs.{balance}")

    elif choice == '4':
        print("Thank you for using the ATM. Goodbye")
        break

    else:
        print("Invalid choice. Please select from 1 to 4.")

password = input("Enter your password: ")

has_upper = False
has_digit = False
has_symbol = False

if len(password) < 8:
    print("Password must be at least 8 characters long.")
else:
    for char in password:
        if char.isupper():
            has_upper = True
        elif char.isdigit():
            has_digit = True
        elif not char.isalnum():
            has_symbol = True

    if has_upper and has_digit and has_symbol:
        print("Strong password!")
    else:
        print("Weak password. Make sure it has:")
        if not has_upper:
            print("At least one uppercase letter")
        if not has_digit:
            print("At least one number")
        if not has_symbol:
            print("At least one symbol (like !, @, #, etc.)")

a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

while b != 0:
    remainder = a % b
    a = b
    b = remainder      
print("GCD is:", a)