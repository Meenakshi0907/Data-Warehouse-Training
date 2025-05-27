LISTS
sq = [x**2 for x in range(1, 21)]
print(sq)

numbers = [10, 5, 20, 8, 25, 3]
for i in range(len(numbers)):
    for j in range(len(numbers) - 1):
        if numbers[j] > numbers[j + 1]:
            # Swap
            numbers[j], numbers[j + 1] = numbers[j + 1], numbers[j]

print("2nd largest element in the array:", numbers[1])

numbers = [10, 5, 20, 10, 5, 25, 3, 20]
new_numbers = []
for num in numbers:
    if num not in new_numbers:
        new_numbers.append(num)

print("List without duplicates:", new_numbers)

def rotate_right(lst, k):
    k = k % len(lst)
    return lst[-k:] + lst[:-k]
numbers = [1, 2, 3, 4, 5]
k = 2
rotated = rotate_right(numbers, k)
print("Rotated list:", rotated)

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
doubled_evens = []
for num in numbers:
    if num % 2 == 0:
        doubled_evens.append(num*2)
print("Doubled even numbers:", doubled_evens)

TUPLES
tuple1 = (1, 2, 3)
tuple2 = (4, 5, 6)
tuple1,tuple2 = tuple2,tuple1
print(tuple1)
print(tuple2)

student = ("Meenakshi", 21, "Computer Science", "A")
name, age, branch, grade = student
print(f"{name} is {age} years old, studies {branch}, and got grade {grade}.")

pair_tuple = (("a", 1), ("b", 2))
result_dict = dict(pair_tuple)
print(result_dict)

SETS
list1 = input("Enter elements of first list: ").split()
list2 = input("Enter elements of second list: ").split()
set1 = set(list1)
set2 = set(list2)
common = set1 & set2
print("Common elements:", list(common))

sentence = input("Enter a sentence: ")
words = sentence.split()
unique_words = set(words)
for word in unique_words:
    print(word)

set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7, 8}
result = set1 ^ set2
print(result)

set1 = {1, 2, 3}
set2 = {1, 2, 3, 4, 5}
if set1.issubset(set2):
    print("set1 is a subset of set2")
else:
    print("set1 is NOT a subset of set2")

DICTIONARIES
text = input("Enter a string: ")
frequency = {}
for char in text:
    if char in frequency:
        frequency[char] += 1
    else:
        frequency[char] = 1
print("Character frequencies:")
for char, count in frequency.items():
    print(f"'{char}': {count}")

grade_book = {}
for i in range(3):
    name = input(f"Enter name of student {i+1}: ")
    marks = int(input(f"Enter marks for {name}: "))
    grade_book[name] = marks
search_name = input("\nEnter the student's name to get their grade: ")
if search_name in grade_book:
    marks = grade_book[search_name]
    if marks >= 90:
        grade = 'A'
    elif marks >= 75:
        grade = 'B'
    else:
        grade = 'C'
    print(f"{search_name}'s Grade: {grade}")
else:
    print("Student not found.")

dict1 = {'a': 10, 'b': 20, 'c': 30}
dict2 = {'b': 5, 'c': 15, 'd': 40}
merged = dict1.copy()
for key, value in dict2.items():
    if key in merged:
        merged[key] += value
    else:
        merged[key] = value  

print("Merged dictionary:", merged)

original_dict = {"a": 1, "b": 2}
inverted_dict = {value: key for key, value in original_dict.items()}
print(inverted_dict)

words = ["apple", "bat", "car", "dance", "egg", "fish", "go"]
grouped = {}
for word in words:
    length = len(word)
    if length not in grouped:
        grouped[length] = [word]
    else:
        grouped[length].append(word)
print(grouped)
