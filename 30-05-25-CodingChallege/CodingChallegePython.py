#Python Full-Spectrum Assessment (No Solutions)
#Section 1: Python Basics & Control Flow

#Q1. Write a Python program to print all odd numbers between 10 and 50.
for i in range(10,51):
    if i%2 !=0:
        print(i,end=" ")

#Q2. Create a function that returns whether a given year is a leap year.
year = int(input("Enter a year:"))
if (year%4 == 0 and year%100 != 0) or (year%400 == 0):
    print("The year is a leap year")
else:
    print("The year is not a leap year")

#Q3. Write a loop that counts how many times the letter a appears in a given string.
string = input("Enter a string:")
str2 = string.lower()
count = 0
for char in str2:
    if char == 'a':
        count += 1
print(f"The letter 'a' appears {count} times")

#Section 2: Collections (Lists, Tuples, Sets, Dicts)
#Q4. Create a dictionary from the following lists:
keys = ['a', 'b', 'c']
values = [100, 200, 300]
dict_new = dict(zip(keys,values))
print(dict_new)

#Q5. From a list of employee salaries, extract:
#The maximum salary
#All salaries above average
#A sorted version in descending order
salarys = [50000,60000,100000,75000,80000,55000,90000]
print("Max of salarys")
max_salarys = max(salarys)
print(max_salarys)

print("Above Average of salarys")
avg_salarys = sum(salarys)/len(salarys)
for sal in salarys:
    if sal > avg_salarys:
        print(sal,end=" ")

print("\nSorted array:")
sorted_des = sorted(salarys,reverse= True)
print(sorted_des)

#Q6. Create a set from a list and remove duplicates. Show the difference between two sets:
#a = [1, 2, 3, 4]
#b = [3, 4, 5, 6]

a = [1, 2, 3, 4]
b = [3, 4, 5, 6]
set_a = set(a)
set_b = set(b)
diff = set_a - set_b
print("Difference:", diff)

#Section 3: Functions & Classes
#Q7. Write a class Employee with __init__ , display() , and is_high_earner() methods.An employee is a high earner if salary > 60000.
class Employee:
    def __init__(self,name,salary):
        self.name = name
        self.salary = salary

    def is_high_earner(self):
        return self.salary > 60000

    def display(self):
        print(f"Name:{self.name} and Salary:{self.salary}")

emp1 = Employee("Meenakshi",70000)
emp2 = Employee("Sara",40000)
print("Is it higher earning:",emp1.is_high_earner())
emp1.display()
print("Is it higher earning:",emp2.is_high_earner())
emp2.display()

#Q8. Create a class Project that inherits from Employee and adds project_name and hours_allocated .
class Project(Employee):
    def __init__(self,name,salary,project_name,hours_allocated):
        super().__init__(name,salary)
        self.project_name = project_name
        self.hours_allocated = hours_allocated

    def display(self):
        print(f"The employee {self.name} with {self.salary} amount is allocated to {self.project_name} project for {self.hours_allocated} hours")

pro = Project("Meenakshi",50000,"Data Engineering",9)
pro.display()

#Q9. Instantiate 3 employees and print whether they are high earners.
emp1 = Employee("Meenakshi", 50000)
emp2 = Employee("Shafeeq", 60000)
emp3 = Employee("Dhivya", 70000)

employees = [emp1, emp2, emp3]

for emp in employees:
    emp.display()
    print("High Earner:", emp.is_high_earner())
    print("---")

#Section 4: File Handling
#Q10. Write to a file the names of employees who belong to the 'IT' department.
employees = [
    {"EmployeeID": 1, "Name": "Ali", "Department": "HR"},
    {"EmployeeID": 2, "Name": "Neha", "Department": "IT"},
    {"EmployeeID": 3, "Name": "Ravi", "Department": "Finance"},
    {"EmployeeID": 4, "Name": "Sara", "Department": "IT"},
    {"EmployeeID": 5, "Name": "Vikram", "Department": "HR"}
]

with open("it_employees.txt", "w") as file:
    for emp in employees:
        if emp["Department"] == "IT":
            file.write(emp["Name"] + "\n")

#Q11. Read from a text file and count the number of words.
with open("readfile.txt", "r") as file:
    content = file.read()
    words = content.split()
    word_count = len(words)
print("Number of words:", word_count)

#Section 5: Exception Handling
#Q12. Write a program that accepts a number from the user and prints the square. Handle the case when input is not a number.
try:
    num = int(input("Enter a number:"))
    sq = num**2
    print(sq)
except ValueError:
    print("Enter a NUMBER")

#Q13. Handle a potential ZeroDivisionError in a division function.
n = int(input("Enter numerator:"))
d = int(input("Enter denominator:"))
try:
    div = n/d
    print(div)
except ZeroDivisionError:
    print("no zeros in denominator")

#Section 6: Pandas – Reading & Exploring CSVs
#Q14. Load both employees.csv and projects.csv using Pandas.
import pandas as pd

emp_df = pd.read_csv("employees.csv")
pro_df = pd.read_csv("projects.csv")

#Q15. Display:

#First 2 rows of employees
print(emp_df.head(2))
#Unique values in the Department column
print(emp_df['Department'].unique())
#Average salary by department
avg_salary = emp_df.groupby('Department')['Salary'].mean()
print(avg_salary)

#Q16. Add a column TenureInYears = current year - joining year.
from datetime import datetime
emp_df['JoiningDate'] = pd.to_datetime(emp_df['JoiningDate'])
current_year = datetime.now().year
emp_df['TenureInYears'] = current_year - emp_df['JoiningDate'].dt.year
print(emp_df[['Name','JoiningDate','TenureInYears']])

#Section 7: Data Filtering, Aggregation, and Sorting
#Q17. From employees.csv , filter all IT department employees with salary > 60000.
value = emp_df[(emp_df['Department'] == 'IT') & (emp_df['Salary'] > 60000)]
print(value)

#Q18. Group by Department and get:
#Count of employees
#Total Salary
#Average Salary
grouped = emp_df.groupby('Department')
employee_count = grouped['EmployeeID'].count()
total_salary = grouped['Salary'].sum()
average_salary = grouped['Salary'].mean()
summary_df = pd.DataFrame({
    'EmployeeCount': employee_count,
    'TotalSalary': total_salary,
    'AverageSalary': average_salary
})
print(summary_df)

#Q19. Sort all employees by salary in descending order.
sorted_df = emp_df.sort_values(by='Salary', ascending=False)
print(sorted_df)

Section 8: Joins & Merging
Q20. Merge employees.csv and projects.csv on EmployeeID to show project allocations.
merge_df = pd.merge(emp_df,pro_df,on = 'EmployeeID',how = "right")
print(merge_df)

Q21. List all employees who are not working on any project (left join logic).
merge_df = pd.merge(emp_df,pro_df,on = 'EmployeeID',how = "left")
no_pro = merge_df[merge_df['ProjectID'].isna()]
print(no_pro[['EmployeeID', 'Name', 'Department','ProjectID', 'ProjectName']])

Q22. Add a derived column TotalCost = HoursAllocated * (Salary / 160) in the merged dataset.
merge_df = pd.merge(emp_df,pro_df,on = 'EmployeeID')
merge_df['TotalCost'] = merge_df['HoursAllocated'] * (merge_df['Salary'] / 160)
print(merge_df[['Name', 'ProjectName', 'HoursAllocated', 'Salary', 'TotalCost']])
