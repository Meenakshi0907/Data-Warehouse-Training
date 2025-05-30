# for i in range(10,51):
#     if i%2 !=0:
#         print(i,end=" ")
from Tools.scripts.dutree import display


# year = int(input("Enter a year:"))
# if (year%4 == 0 and year%100 != 0) or (year%400 == 0):
#     print("The year is a leap year")
# else:
#     print("The year is not a leap year")

# string = input("Enter a string:")
# str2 = string.lower()
# count = 0
# for char in str2:
#     if char == 'a':
#         count += 1
# print(f"The letter 'a' appears {count} times")

# keys = ['a', 'b', 'c']
# values = [100, 200, 300]
# dict_new = dict(zip(keys,values))
# print(dict_new)

# salarys = [50000,60000,100000,75000,80000,55000,90000]
# print("Max of salarys")
# max_salarys = max(salarys)
# print(max_salarys)
#
# print("Above Average of salarys")
# avg_salarys = sum(salarys)/len(salarys)
# for sal in salarys:
#     if sal > avg_salarys:
#         print(sal,end=" ")
#
# print("\nSorted array:")
# sorted_des = sorted(salarys,reverse= True)
# print(sorted_des)

# a = [1, 2, 3, 4]
# b = [3, 4, 5, 6]
# set_a = set(a)
# set_b = set(b)
# diff = set_a - set_b
# print("Difference:", diff)

# class Employee:
#     def __init__(self,name,salary):
#         self.name = name
#         self.salary = salary
#
#     def is_high_earner(self):
#         return self.salary > 60000
#
#     def display(self):
#         print(f"Name:{self.name} and Salary:{self.salary}")
#
# class Project(Employee):
#     def __init__(self,name,salary,project_name,hours_allocated):
#         super().__init__(name,salary)
#         self.project_name = project_name
#         self.hours_allocated = hours_allocated
#
#     def display(self):
#         print(f"The employee {self.name} with {self.salary} amount is allocated to {self.project_name} project for {self.hours_allocated} hours")

# pro = Project("Meenakshi",50000,"Data Engineering",9)
# pro.display()

# emp1 = Employee("Meenakshi",70000)
# emp2 = Employee("Sara",40000)
# print("Is it higher earning:",emp1.is_high_earner())
# emp1.display()
# print("Is it higher earning:",emp2.is_high_earner())
# emp2.display()

# emp1 = Employee("Meenakshi", 50000)
# emp2 = Employee("Shafeeq", 60000)
# emp3 = Employee("Dhivya", 70000)
#
# employees = [emp1, emp2, emp3]
#
# for emp in employees:
#     emp.display()
#     print("High Earner:", emp.is_high_earner())
#     print("---")

# employees = [
#     {"EmployeeID": 1, "Name": "Ali", "Department": "HR"},
#     {"EmployeeID": 2, "Name": "Neha", "Department": "IT"},
#     {"EmployeeID": 3, "Name": "Ravi", "Department": "Finance"},
#     {"EmployeeID": 4, "Name": "Sara", "Department": "IT"},
#     {"EmployeeID": 5, "Name": "Vikram", "Department": "HR"}
# ]
#
# with open("employees.txt", "w") as file:
#     for emp in employees:
#         if emp["Department"] == "IT":
#             file.write(emp["Name"] + "\n")

# with open("readfile.txt", "r") as file:
#     content = file.read()
#     words = content.split()
#     word_count = len(words)
# print("Number of words:", word_count)

# try:
#     num = int(input("Enter a number:"))
#     sq = num**2
#     print(sq)
# except ValueError:
#     print("Enter a NUMBER")

# n = int(input("Enter numerator:"))
# d = int(input("Enter denominator:"))
# try:
#     div = n/d
#     print(div)
# except ZeroDivisionError:
#     print("no zeros in denominator")











