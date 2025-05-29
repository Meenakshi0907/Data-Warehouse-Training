#1. Prime Number Checker
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

for num in range(1, 101):
    if is_prime(num):
        print(num, end=' ')

#2. Temperature Converter
def convert_temp(value, unit):
    if unit == 'C' or unit == 'c':
        fahrenheit = (value * 9/5) + 32
        return fahrenheit
    elif unit == 'F' or unit == 'f':
        celsius = (value - 32) * 5/9
        return celsius
    else:
        return "Invalid unit. Use 'C' for Celsius or 'F' for Fahrenheit."

# Example usage
value = int(input("Enter the value:"))
unit = input("Enter the unit:")
print("The convertion is:",convert_temp(value,unit))

#3. Recursive Factorial Function
def factorial(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)

n = int(input("Enter a number:"))
print("Factorial is:", factorial(n))

#CLASSES (Exercises 4–7)
#4. Class: Rectangle
class Rectangle:
    def __init__(self,l,b):
        self.l = l
        self.b = b

    def area(self):
        return self.l*self.b

    def perimeter(self):
        return 2*(self.l + self.b)

    def is_square(self):
        return self.l == self.b

rect = Rectangle(10,10)
print("Area:",rect.area())
print("Perimeter:",rect.perimeter())
print("Is square?",rect.is_square())

#5. Class: BankAccount
class Bank:
    def __init__(self,name,balance = 0):
        self.name = name
        self.balance = balance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"Deposited Rs.{amount}.")
        else:
            print("Deposit amount must be positive.")

    def withdraw(self, amount):
        if amount <= 0:
            print("Withdrawal amount must be positive.")
        elif amount > self.balance:
            print("Insufficient balance. Withdrawal denied.")
        else:
            self.balance -= amount
            print(f"Withdrew Rs.{amount}.")

    def get_balance(self):
        return self.balance

acc = Bank("Meenakshi", 1000)
acc.deposit(500)
acc.withdraw(200)
print("Balance:", acc.get_balance())
acc.withdraw(2000)

#6. Class: Book
class Bank:
    def __init__(self,name,balance = 0):
        self.name = name
        self.balance = balance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"Deposited Rs.{amount}.")
        else:
            print("Deposit amount must be positive.")

    def withdraw(self, amount):
        if amount <= 0:
            print("Withdrawal amount must be positive.")
        elif amount > self.balance:
            print("Insufficient balance. Withdrawal denied.")
        else:
            self.balance -= amount
            print(f"Withdrew Rs.{amount}.")

    def get_balance(self):
        return self.balance

acc = Bank("Meenakshi", 1000)
acc.deposit(500)
acc.withdraw(200)
print("Balance:", acc.get_balance())
acc.withdraw(2000)

#7. Student Grade System
class Book:
    def __init__(self, title, author, price, in_stock):
        self.title = title
        self.author = author
        self.price = price
        self.in_stock = in_stock

    def sell(self, quantity):
        if quantity <= 0:
            raise ValueError("Quantity must be positive.")
        if quantity > self.in_stock:
            raise ValueError("Not enough stock to complete the sale.")
        self.in_stock -= quantity
        print(f"Sold {quantity} copies of '{self.title}'. Remaining stock: {self.in_stock}")

book1 = Book("The Tortured Poets Department", "Taylor Swift", 299, 10)
book1.sell(3)
try:
    book1.sell(15)
except ValueError as e:
    print("Error:", e)

#INHERITANCE (Exercises 8–10)
#8. Person → Employee

class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

class Employee(Person):
    def __init__(self, name, age, emp_id, salary):
        super().__init__(name, age)
        self.emp_id = emp_id
        self.salary = salary

    def display_info(self):
        print(f"Name     : {self.name}")
        print(f"Age      : {self.age}")
        print(f"Emp ID   : {self.emp_id}")
        print(f"Salary   : ₹{self.salary}")

emp1 = Employee("Meenakshi", 21, "EMP123", 50000)
emp1.display_info()

#Vehicle → Car , Bike
class Vehicle:
    def __init__(self, name, wheels):
        self.name = name
        self.wheels = wheels

    def description(self):
        return f"Vehicle Name: {self.name}, Wheels: {self.wheels}"

class Car(Vehicle):
    def __init__(self, name, wheels, fuel_type):
        super().__init__(name, wheels)
        self.fuel_type = fuel_type

    def description(self):
        return f"Car Name: {self.name}, Wheels: {self.wheels}, Fuel Type: {self.fuel_type}"

class Bike(Vehicle):
    def __init__(self, name, wheels, is_geared):
        super().__init__(name, wheels)
        self.is_geared = is_geared

    def description(self):
        gear_status = "Geared" if self.is_geared else "Non-geared"
        return f"Bike Name: {self.name}, Wheels: {self.wheels}, Type: {gear_status}"

car1 = Car("Honda City", 4, "Petrol")
bike1 = Bike("Hero Splendor", 2, True)

print(car1.description())  
print(bike1.description())

#10. Polymorphism with Animals
class Animal:
    def speak(self):
        return "Some sound"

# Subclass Dog
class Dog(Animal):
    def speak(self):
        return "Woof!"

# Subclass Cat
class Cat(Animal):
    def speak(self):
        return "Meow!"

# Subclass Cow
class Cow(Animal):
    def speak(self):
        return "Moo!"

# Create a list of animal objects
animals = [Dog(), Cat(), Cow()]

# Call speak() on each object in a loop
for animal in animals:
    print(animal.speak())