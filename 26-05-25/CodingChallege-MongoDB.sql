test> use studentsdetails
switched to db studentsdetails
studentsdetails> db.students.insertMany([
...   {
...     "name": "Ayaan Khan",
...     "age": 21,
...     "gender": "Male",
...     "department": "Computer Science",
...     "courses": [
...       { "name": "MongoDB", "score": 85 },
...       { "name": "Python", "score": 90 }
...     ],
...     "address": {
...       "city": "Hyderabad",
...       "state": "Telangana",
...       "pincode": 586198
...     },
...     "enrollmentDate": ISODate("2023-02-17T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "John Doe",
...     "age": 20,
...     "gender": "Male",
...     "department": "Mathematics",
...     "courses": [
...       { "name": "Java", "score": 80 },
...       { "name": "Python", "score": 70 }
...     ],
...     "address": {
...       "city": "Mumbai",
...       "state": "Maharashtra",
...       "pincode": 446989
...     },
...     "enrollmentDate": ISODate("2024-11-06T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "Emily Watson",
...     "age": 23,
...     "gender": "Female",
...     "department": "Mechanical",
...     "courses": [
...       { "name": "MongoDB", "score": 66 },
...       { "name": "Java", "score": 96 }
...     ],
...     "address": {
...       "city": "Delhi",
...       "state": "Delhi",
...       "pincode": 587520
...     },
...     "enrollmentDate": ISODate("2023-06-06T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "Rahul Sharma",
...     "age": 22,
...     "gender": "Male",
...     "department": "Electronics",
...     "courses": [
...       { "name": "MongoDB", "score": 66 },
...       { "name": "C++", "score": 69 }
...     ],
...     "address": {
...       "city": "Chennai",
...       "state": "Tamil Nadu",
...       "pincode": 586248
...     },
...     "enrollmentDate": ISODate("2023-11-21T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "Nina Patel",
...     "age": 25,
...     "gender": "Female",
...     "department": "Biotech",
...     "courses": [
...       { "name": "Python", "score": 72 },
...       { "name": "C++", "score": 78 }
...     ],
...     "address": {
...       "city": "Bangalore",
...       "state": "Karnataka",
...       "pincode": 585730
...     },
...     "enrollmentDate": ISODate("2024-03-07T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "Sara Lee",
...     "age": 22,
...     "gender": "Female",
...     "department": "Computer Science",
...     "courses": [
...       { "name": "Java", "score": 83 },
...       { "name": "C++", "score": 83 }
...     ],
...     "address": {
...       "city": "Hyderabad",
...       "state": "Telangana",
...       "pincode": 552756
...     },
...     "enrollmentDate": ISODate("2023-04-02T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "Michael Chen",
...     "age": 25,
...     "gender": "Male",
...     "department": "Mathematics",
...     "courses": [
...       { "name": "Python", "score": 95 },
...       { "name": "Node.js", "score": 70 }
...     ],
...     "address": {
...       "city": "Mumbai",
...       "state": "Maharashtra",
...       "pincode": 572794
...     },
...     "enrollmentDate": ISODate("2023-12-25T00:00:00Z"),
...     "isActive": false
...   },
...   {
...     "name": "Aliya Rahman",
...     "age": 21,
...     "gender": "Female",
...     "department": "Mechanical",
...     "courses": [
...       { "name": "MongoDB", "score": 95 },
...       { "name": "Java", "score": 62 }
...     ],
...     "address": {
...       "city": "Delhi",
...       "state": "Delhi",
...       "pincode": 535282
...     },
...     "enrollmentDate": ISODate("2024-04-18T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "Kabir Das",
...     "age": 24,
...     "gender": "Male",
...     "department": "Electronics",
...     "courses": [
...       { "name": "Data Structures", "score": 94 },
...       { "name": "MongoDB", "score": 73 }
...     ],
...     "address": {
...       "city": "Chennai",
...       "state": "Tamil Nadu",
...       "pincode": 573482
...     },
...     "enrollmentDate": ISODate("2024-03-14T00:00:00Z"),
...     "isActive": true
...   },
...   {
...     "name": "Fatima Noor",
...     "age": 24,
...     "gender": "Female",
...     "department": "Biotech",
...     "courses": [
...       { "name": "MongoDB", "score": 63 },
...       { "name": "Node.js", "score": 64 }
...     ],
...     "address": {
...       "city": "Bangalore",
...       "state": "Karnataka",
...       "pincode": 596283
...     },
...     "enrollmentDate": ISODate("2023-12-20T00:00:00Z"),
...     "isActive": false
...   }
... ])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("6833eb29bd4812b7c379dc1d"),
    '1': ObjectId("6833eb29bd4812b7c379dc1e"),
    '2': ObjectId("6833eb29bd4812b7c379dc1f"),
    '3': ObjectId("6833eb29bd4812b7c379dc20"),
    '4': ObjectId("6833eb29bd4812b7c379dc21"),
    '5': ObjectId("6833eb29bd4812b7c379dc22"),
    '6': ObjectId("6833eb29bd4812b7c379dc23"),
    '7': ObjectId("6833eb29bd4812b7c379dc24"),
    '8': ObjectId("6833eb29bd4812b7c379dc25"),
    '9': ObjectId("6833eb29bd4812b7c379dc26")
  }
}
studentsdetails> db.students.insertMany([
...   {
...     name: "Ishaan Verma",
...     age: 22,
...     gender: "Male",
...     department: "Computer Science",
...     courses: [
...       { name: "Python", score: 88 },
...       { name: "Node.js", score: 77 }
...     ],
...     address: {
...       city: "Pune",
...       state: "Maharashtra",
...       pincode: 411001
...     },
...     enrollmentDate: ISODate("2024-02-10T00:00:00Z"),
...     isActive: true
...   },
...   {
...     name: "Meera Joshi",
...     age: 20,
...     gender: "Female",
...     department: "Mathematics",
...     courses: [
...       { name: "MongoDB", score: 89 },
...       { name: "Python", score: 92 }
...     ],
...     address: {
...       city: "Ahmedabad",
...       state: "Gujarat",
...       pincode: 380001
...     },
...     enrollmentDate: ISODate("2024-01-15T00:00:00Z"),
...     isActive: true
...   },
...   {
...     name: "Arjun Nair",
...     age: 24,
...     gender: "Male",
...     department: "Computer Science",
...     courses: [
...       { name: "MongoDB", score: 79 },
...       { name: "Java", score: 84 }
...     ],
...     address: {
...       city: "Kochi",
...       state: "Kerala",
...       pincode: 682001
...     },
...     enrollmentDate: ISODate("2023-09-05T00:00:00Z"),
...     isActive: false
...   },
...   {
...     name: "Priya Sinha",
...     age: 21,
...     gender: "Female",
...     department: "Mechanical",
...     courses: [
...       { name: "Python", score: 76 },
...       { name: "C++", score: 72 }
...     ],
...     address: {
...       city: "Bhopal",
...       state: "Madhya Pradesh",
...       pincode: 462001
...     },
...     enrollmentDate: ISODate("2024-05-20T00:00:00Z"),
...     isActive: true
...   },
...   {
...     name: "Ravi Teja",
...     age: 26,
...     gender: "Male",
...     department: "Electronics",
...     courses: [
...       { name: "Node.js", score: 91 },
...       { name: "C++", score: 87 }
...     ],
...     address: {
...       city: "Hyderabad",
...       state: "Telangana",
...       pincode: 500084
...     },
...     enrollmentDate: ISODate("2023-07-11T00:00:00Z"),
...     isActive: false
...   },
...   {
...     name: "Tanya Kapoor",
...     age: 23,
...     gender: "Female",
...     department: "Computer Science",
...     courses: [
...       { name: "Python", score: 95 },
...       { name: "MongoDB", score: 89 }
...     ],
...     address: {
...       city: "Jaipur",
...       state: "Rajasthan",
...       pincode: 302001
...     },
...     enrollmentDate: ISODate("2023-03-08T00:00:00Z"),
...     isActive: true
...   },
...   {
...     name: "Manoj Pillai",
...     age: 22,
...     gender: "Male",
...     department: "Biotech",
...     courses: [
...       { name: "Java", score: 75 },
...       { name: "Python", score: 82 }
...     ],
...     address: {
...       city: "Thiruvananthapuram",
...       state: "Kerala",
...       pincode: 695001
...     },
...     enrollmentDate: ISODate("2024-06-25T00:00:00Z"),
...     isActive: true
...   },
...   {
...     name: "Sneha Desai",
...     age: 19,
...     gender: "Female",
...     department: "Mathematics",
...     courses: [
...       { name: "MongoDB", score: 83 },
...       { name: "Node.js", score: 85 }
...     ],
...     address: {
...       city: "Surat",
...       state: "Gujarat",
...       pincode: 395003
...     },
...     enrollmentDate: ISODate("2023-10-01T00:00:00Z"),
...     isActive: false
...   },
...   {
...     name: "Karan Mehta",
...     age: 23,
...     gender: "Male",
...     department: "Computer Science",
...     courses: [
...       { name: "Python", score: 93 },
...       { name: "Java", score: 88 }
...     ],
...     address: {
...       city: "Nagpur",
...       state: "Maharashtra",
...       pincode: 440001
...     },
...     enrollmentDate: ISODate("2024-01-01T00:00:00Z"),
...     isActive: true
...   },
...   {
...     name: "Divya Raj",
...     age: 21,
...     gender: "Female",
...     department: "Electronics",
...     courses: [
...       { name: "Python", score: 78 },
...       { name: "Node.js", score: 82 }
...     ],
...     address: {
...       city: "Lucknow",
...       state: "Uttar Pradesh",
...       pincode: 226001
...     },
...     enrollmentDate: ISODate("2024-04-12T00:00:00Z"),
...     isActive: true
...   }
... ]);
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("6833ebc1bd4812b7c379dc27"),
    '1': ObjectId("6833ebc1bd4812b7c379dc28"),
    '2': ObjectId("6833ebc1bd4812b7c379dc29"),
    '3': ObjectId("6833ebc1bd4812b7c379dc2a"),
    '4': ObjectId("6833ebc1bd4812b7c379dc2b"),
    '5': ObjectId("6833ebc1bd4812b7c379dc2c"),
    '6': ObjectId("6833ebc1bd4812b7c379dc2d"),
    '7': ObjectId("6833ebc1bd4812b7c379dc2e"),
    '8': ObjectId("6833ebc1bd4812b7c379dc2f"),
    '9': ObjectId("6833ebc1bd4812b7c379dc30")
  }
}

CRUD Operations
studentsdetails> db.students.updateMany({"courses.name":"Python"},{$set:{"courses.$.score":100}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 11,
  modifiedCount: 11,
  upsertedCount: 0
}
studentsdetails> db.students.deleteOne({name:"John Doe"})
{ acknowledged: true, deletedCount: 1 }
studentsdetails> db.students.find({department:"Computer Science"})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc27"),
    name: 'Ishaan Verma',
    age: 22,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 77 } ],
    address: { city: 'Pune', state: 'Maharashtra', pincode: 411001 },
    enrollmentDate: ISODate("2024-02-10T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc29"),
    name: 'Arjun Nair',
    age: 24,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 79 }, { name: 'Java', score: 84 } ],
    address: { city: 'Kochi', state: 'Kerala', pincode: 682001 },
    enrollmentDate: ISODate("2023-09-05T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: { city: 'Jaipur', state: 'Rajasthan', pincode: 302001 },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2f"),
    name: 'Karan Mehta',
    age: 23,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Java', score: 88 } ],
    address: { city: 'Nagpur', state: 'Maharashtra', pincode: 440001 },
    enrollmentDate: ISODate("2024-01-01T00:00:00.000Z"),
    isActive: true
  }
]

Query Operators
studentsdetails> db.students.find({age:{$gt:20}})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1f"),
    name: 'Emily Watson',
    age: 23,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'Java', score: 96 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 587520 },
    enrollmentDate: ISODate("2023-06-06T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc20"),
    name: 'Rahul Sharma',
    age: 22,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'C++', score: 69 } ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 586248 },
    enrollmentDate: ISODate("2023-11-21T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc21"),
    name: 'Nina Patel',
    age: 25,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'Python', score: 100 }, { name: 'C++', score: 78 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 585730 },
    enrollmentDate: ISODate("2024-03-07T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc23"),
    name: 'Michael Chen',
    age: 25,
    gender: 'Male',
    department: 'Mathematics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 70 } ],
    address: { city: 'Mumbai', state: 'Maharashtra', pincode: 572794 },
    enrollmentDate: ISODate("2023-12-25T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc24"),
    name: 'Aliya Rahman',
    age: 21,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 95 }, { name: 'Java', score: 62 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 535282 },
    enrollmentDate: ISODate("2024-04-18T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc25"),
    name: 'Kabir Das',
    age: 24,
    gender: 'Male',
    department: 'Electronics',
    courses: [
      { name: 'Data Structures', score: 94 },
      { name: 'MongoDB', score: 73 }
    ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 573482 },
    enrollmentDate: ISODate("2024-03-14T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc26"),
    name: 'Fatima Noor',
    age: 24,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'MongoDB', score: 63 }, { name: 'Node.js', score: 64 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 596283 },
    enrollmentDate: ISODate("2023-12-20T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc27"),
    name: 'Ishaan Verma',
    age: 22,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 77 } ],
    address: { city: 'Pune', state: 'Maharashtra', pincode: 411001 },
    enrollmentDate: ISODate("2024-02-10T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc29"),
    name: 'Arjun Nair',
    age: 24,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 79 }, { name: 'Java', score: 84 } ],
    address: { city: 'Kochi', state: 'Kerala', pincode: 682001 },
    enrollmentDate: ISODate("2023-09-05T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2a"),
    name: 'Priya Sinha',
    age: 21,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'Python', score: 100 }, { name: 'C++', score: 72 } ],
    address: { city: 'Bhopal', state: 'Madhya Pradesh', pincode: 462001 },
    enrollmentDate: ISODate("2024-05-20T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2b"),
    name: 'Ravi Teja',
    age: 26,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'Node.js', score: 91 }, { name: 'C++', score: 87 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 500084 },
    enrollmentDate: ISODate("2023-07-11T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: { city: 'Jaipur', state: 'Rajasthan', pincode: 302001 },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2d"),
    name: 'Manoj Pillai',
    age: 22,
    gender: 'Male',
    department: 'Biotech',
    courses: [ { name: 'Java', score: 75 }, { name: 'Python', score: 100 } ],
    address: { city: 'Thiruvananthapuram', state: 'Kerala', pincode: 695001 },
    enrollmentDate: ISODate("2024-06-25T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2f"),
    name: 'Karan Mehta',
    age: 23,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Java', score: 88 } ],
    address: { city: 'Nagpur', state: 'Maharashtra', pincode: 440001 },
    enrollmentDate: ISODate("2024-01-01T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc30"),
    name: 'Divya Raj',
    age: 21,
    gender: 'Female',
    department: 'Electronics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 82 } ],
    address: { city: 'Lucknow', state: 'Uttar Pradesh', pincode: 226001 },
    enrollmentDate: ISODate("2024-04-12T00:00:00.000Z"),
    isActive: true
  }
]
studentsdetails> db.students.find({enrollmentDate:{$gte:ISODate("2023-01-01T00:00:00Z"),$lte:ISODate("2023-12-31T23:59:59Z")}})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1f"),
    name: 'Emily Watson',
    age: 23,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'Java', score: 96 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 587520 },
    enrollmentDate: ISODate("2023-06-06T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc20"),
    name: 'Rahul Sharma',
    age: 22,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'C++', score: 69 } ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 586248 },
    enrollmentDate: ISODate("2023-11-21T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc23"),
    name: 'Michael Chen',
    age: 25,
    gender: 'Male',
    department: 'Mathematics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 70 } ],
    address: { city: 'Mumbai', state: 'Maharashtra', pincode: 572794 },
    enrollmentDate: ISODate("2023-12-25T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc26"),
    name: 'Fatima Noor',
    age: 24,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'MongoDB', score: 63 }, { name: 'Node.js', score: 64 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 596283 },
    enrollmentDate: ISODate("2023-12-20T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc29"),
    name: 'Arjun Nair',
    age: 24,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 79 }, { name: 'Java', score: 84 } ],
    address: { city: 'Kochi', state: 'Kerala', pincode: 682001 },
    enrollmentDate: ISODate("2023-09-05T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2b"),
    name: 'Ravi Teja',
    age: 26,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'Node.js', score: 91 }, { name: 'C++', score: 87 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 500084 },
    enrollmentDate: ISODate("2023-07-11T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: { city: 'Jaipur', state: 'Rajasthan', pincode: 302001 },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2e"),
    name: 'Sneha Desai',
    age: 19,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 83 }, { name: 'Node.js', score: 85 } ],
    address: { city: 'Surat', state: 'Gujarat', pincode: 395003 },
    enrollmentDate: ISODate("2023-10-01T00:00:00.000Z"),
    isActive: false
  }
]
studentsdetails> db.students.find({$or:[{department:"Computer Science"},{department:"Mathematics"}]})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc23"),
    name: 'Michael Chen',
    age: 25,
    gender: 'Male',
    department: 'Mathematics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 70 } ],
    address: { city: 'Mumbai', state: 'Maharashtra', pincode: 572794 },
    enrollmentDate: ISODate("2023-12-25T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc27"),
    name: 'Ishaan Verma',
    age: 22,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 77 } ],
    address: { city: 'Pune', state: 'Maharashtra', pincode: 411001 },
    enrollmentDate: ISODate("2024-02-10T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc28"),
    name: 'Meera Joshi',
    age: 20,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 89 }, { name: 'Python', score: 100 } ],
    address: { city: 'Ahmedabad', state: 'Gujarat', pincode: 380001 },
    enrollmentDate: ISODate("2024-01-15T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc29"),
    name: 'Arjun Nair',
    age: 24,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 79 }, { name: 'Java', score: 84 } ],
    address: { city: 'Kochi', state: 'Kerala', pincode: 682001 },
    enrollmentDate: ISODate("2023-09-05T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: { city: 'Jaipur', state: 'Rajasthan', pincode: 302001 },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2e"),
    name: 'Sneha Desai',
    age: 19,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 83 }, { name: 'Node.js', score: 85 } ],
    address: { city: 'Surat', state: 'Gujarat', pincode: 395003 },
    enrollmentDate: ISODate("2023-10-01T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2f"),
    name: 'Karan Mehta',
    age: 23,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Java', score: 88 } ],
    address: { city: 'Nagpur', state: 'Maharashtra', pincode: 440001 },
    enrollmentDate: ISODate("2024-01-01T00:00:00.000Z"),
    isActive: true
  }
]
studentsdetails> db.students.find({department:{$ne:"Mechanical"}})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc20"),
    name: 'Rahul Sharma',
    age: 22,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'C++', score: 69 } ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 586248 },
    enrollmentDate: ISODate("2023-11-21T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc21"),
    name: 'Nina Patel',
    age: 25,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'Python', score: 100 }, { name: 'C++', score: 78 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 585730 },
    enrollmentDate: ISODate("2024-03-07T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc23"),
    name: 'Michael Chen',
    age: 25,
    gender: 'Male',
    department: 'Mathematics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 70 } ],
    address: { city: 'Mumbai', state: 'Maharashtra', pincode: 572794 },
    enrollmentDate: ISODate("2023-12-25T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc25"),
    name: 'Kabir Das',
    age: 24,
    gender: 'Male',
    department: 'Electronics',
    courses: [
      { name: 'Data Structures', score: 94 },
      { name: 'MongoDB', score: 73 }
    ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 573482 },
    enrollmentDate: ISODate("2024-03-14T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc26"),
    name: 'Fatima Noor',
    age: 24,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'MongoDB', score: 63 }, { name: 'Node.js', score: 64 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 596283 },
    enrollmentDate: ISODate("2023-12-20T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc27"),
    name: 'Ishaan Verma',
    age: 22,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 77 } ],
    address: { city: 'Pune', state: 'Maharashtra', pincode: 411001 },
    enrollmentDate: ISODate("2024-02-10T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc28"),
    name: 'Meera Joshi',
    age: 20,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 89 }, { name: 'Python', score: 100 } ],
    address: { city: 'Ahmedabad', state: 'Gujarat', pincode: 380001 },
    enrollmentDate: ISODate("2024-01-15T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc29"),
    name: 'Arjun Nair',
    age: 24,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 79 }, { name: 'Java', score: 84 } ],
    address: { city: 'Kochi', state: 'Kerala', pincode: 682001 },
    enrollmentDate: ISODate("2023-09-05T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2b"),
    name: 'Ravi Teja',
    age: 26,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'Node.js', score: 91 }, { name: 'C++', score: 87 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 500084 },
    enrollmentDate: ISODate("2023-07-11T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: { city: 'Jaipur', state: 'Rajasthan', pincode: 302001 },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2d"),
    name: 'Manoj Pillai',
    age: 22,
    gender: 'Male',
    department: 'Biotech',
    courses: [ { name: 'Java', score: 75 }, { name: 'Python', score: 100 } ],
    address: { city: 'Thiruvananthapuram', state: 'Kerala', pincode: 695001 },
    enrollmentDate: ISODate("2024-06-25T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2e"),
    name: 'Sneha Desai',
    age: 19,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 83 }, { name: 'Node.js', score: 85 } ],
    address: { city: 'Surat', state: 'Gujarat', pincode: 395003 },
    enrollmentDate: ISODate("2023-10-01T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2f"),
    name: 'Karan Mehta',
    age: 23,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Java', score: 88 } ],
    address: { city: 'Nagpur', state: 'Maharashtra', pincode: 440001 },
    enrollmentDate: ISODate("2024-01-01T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc30"),
    name: 'Divya Raj',
    age: 21,
    gender: 'Female',
    department: 'Electronics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 82 } ],
    address: { city: 'Lucknow', state: 'Uttar Pradesh', pincode: 226001 },
    enrollmentDate: ISODate("2024-04-12T00:00:00.000Z"),
    isActive: true
  }
]
studentsdetails> db.students.find({"courses.score":{$gt:80}})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1f"),
    name: 'Emily Watson',
    age: 23,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'Java', score: 96 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 587520 },
    enrollmentDate: ISODate("2023-06-06T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc21"),
    name: 'Nina Patel',
    age: 25,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'Python', score: 100 }, { name: 'C++', score: 78 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 585730 },
    enrollmentDate: ISODate("2024-03-07T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc23"),
    name: 'Michael Chen',
    age: 25,
    gender: 'Male',
    department: 'Mathematics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 70 } ],
    address: { city: 'Mumbai', state: 'Maharashtra', pincode: 572794 },
    enrollmentDate: ISODate("2023-12-25T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc24"),
    name: 'Aliya Rahman',
    age: 21,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 95 }, { name: 'Java', score: 62 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 535282 },
    enrollmentDate: ISODate("2024-04-18T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc25"),
    name: 'Kabir Das',
    age: 24,
    gender: 'Male',
    department: 'Electronics',
    courses: [
      { name: 'Data Structures', score: 94 },
      { name: 'MongoDB', score: 73 }
    ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 573482 },
    enrollmentDate: ISODate("2024-03-14T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc27"),
    name: 'Ishaan Verma',
    age: 22,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 77 } ],
    address: { city: 'Pune', state: 'Maharashtra', pincode: 411001 },
    enrollmentDate: ISODate("2024-02-10T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc28"),
    name: 'Meera Joshi',
    age: 20,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 89 }, { name: 'Python', score: 100 } ],
    address: { city: 'Ahmedabad', state: 'Gujarat', pincode: 380001 },
    enrollmentDate: ISODate("2024-01-15T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc29"),
    name: 'Arjun Nair',
    age: 24,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 79 }, { name: 'Java', score: 84 } ],
    address: { city: 'Kochi', state: 'Kerala', pincode: 682001 },
    enrollmentDate: ISODate("2023-09-05T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2a"),
    name: 'Priya Sinha',
    age: 21,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'Python', score: 100 }, { name: 'C++', score: 72 } ],
    address: { city: 'Bhopal', state: 'Madhya Pradesh', pincode: 462001 },
    enrollmentDate: ISODate("2024-05-20T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2b"),
    name: 'Ravi Teja',
    age: 26,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'Node.js', score: 91 }, { name: 'C++', score: 87 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 500084 },
    enrollmentDate: ISODate("2023-07-11T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: { city: 'Jaipur', state: 'Rajasthan', pincode: 302001 },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2d"),
    name: 'Manoj Pillai',
    age: 22,
    gender: 'Male',
    department: 'Biotech',
    courses: [ { name: 'Java', score: 75 }, { name: 'Python', score: 100 } ],
    address: { city: 'Thiruvananthapuram', state: 'Kerala', pincode: 695001 },
    enrollmentDate: ISODate("2024-06-25T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2e"),
    name: 'Sneha Desai',
    age: 19,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 83 }, { name: 'Node.js', score: 85 } ],
    address: { city: 'Surat', state: 'Gujarat', pincode: 395003 },
    enrollmentDate: ISODate("2023-10-01T00:00:00.000Z"),
    isActive: false
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2f"),
    name: 'Karan Mehta',
    age: 23,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Java', score: 88 } ],
    address: { city: 'Nagpur', state: 'Maharashtra', pincode: 440001 },
    enrollmentDate: ISODate("2024-01-01T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc30"),
    name: 'Divya Raj',
    age: 21,
    gender: 'Female',
    department: 'Electronics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 82 } ],
    address: { city: 'Lucknow', state: 'Uttar Pradesh', pincode: 226001 },
    enrollmentDate: ISODate("2024-04-12T00:00:00.000Z"),
    isActive: true
  }
]

Aggregation Framework
studentsdetails> db.students.aggregate([{$group:{_id:"$department",count:{$sum:1}}}])
[
  { _id: 'Mechanical', count: 3 },
  { _id: 'Mathematics', count: 3 },
  { _id: 'Computer Science', count: 6 },
  { _id: 'Electronics', count: 4 },
  { _id: 'Biotech', count: 3 }
]
studentsdetails> db.students.aggregate([{$group:{_id:"$department",averageAge:{$avg:"$age"}}}])
[
  { _id: 'Electronics', averageAge: 23.25 },
  { _id: 'Computer Science', averageAge: 22.5 },
  { _id: 'Biotech', averageAge: 23.666666666666668 },
  { _id: 'Mechanical', averageAge: 21.666666666666668 },
  { _id: 'Mathematics', averageAge: 21.333333333333332 }
]
studentsdetails> db.students.aggregate([{$project:{name:1,department:1,totalScore:{$sum:"$courses.score"}}},{$sort:{totalScore:1}}])
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc26"),
    name: 'Fatima Noor',
    department: 'Biotech',
    totalScore: 127
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc20"),
    name: 'Rahul Sharma',
    department: 'Electronics',
    totalScore: 135
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc24"),
    name: 'Aliya Rahman',
    department: 'Mechanical',
    totalScore: 157
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1f"),
    name: 'Emily Watson',
    department: 'Mechanical',
    totalScore: 162
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc29"),
    name: 'Arjun Nair',
    department: 'Computer Science',
    totalScore: 163
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    department: 'Computer Science',
    totalScore: 166
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc25"),
    name: 'Kabir Das',
    department: 'Electronics',
    totalScore: 167
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2e"),
    name: 'Sneha Desai',
    department: 'Mathematics',
    totalScore: 168
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc23"),
    name: 'Michael Chen',
    department: 'Mathematics',
    totalScore: 170
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2a"),
    name: 'Priya Sinha',
    department: 'Mechanical',
    totalScore: 172
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2d"),
    name: 'Manoj Pillai',
    department: 'Biotech',
    totalScore: 175
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc27"),
    name: 'Ishaan Verma',
    department: 'Computer Science',
    totalScore: 177
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc21"),
    name: 'Nina Patel',
    department: 'Biotech',
    totalScore: 178
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2b"),
    name: 'Ravi Teja',
    department: 'Electronics',
    totalScore: 178
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc30"),
    name: 'Divya Raj',
    department: 'Electronics',
    totalScore: 182
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    department: 'Computer Science',
    totalScore: 185
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2f"),
    name: 'Karan Mehta',
    department: 'Computer Science',
    totalScore: 188
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc28"),
    name: 'Meera Joshi',
    department: 'Mathematics',
    totalScore: 189
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    department: 'Computer Science',
    totalScore: 189
  }
]
studentsdetails> db.students.aggregate([{$match:{isActive:true}},{$project:{name:1,department:1,totalScore:{$sum:"$courses.score"}}},{$sort:{totalScore:1}}])
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc20"),
    name: 'Rahul Sharma',
    department: 'Electronics',
    totalScore: 135
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc24"),
    name: 'Aliya Rahman',
    department: 'Mechanical',
    totalScore: 157
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1f"),
    name: 'Emily Watson',
    department: 'Mechanical',
    totalScore: 162
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    department: 'Computer Science',
    totalScore: 166
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc25"),
    name: 'Kabir Das',
    department: 'Electronics',
    totalScore: 167
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2a"),
    name: 'Priya Sinha',
    department: 'Mechanical',
    totalScore: 172
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2d"),
    name: 'Manoj Pillai',
    department: 'Biotech',
    totalScore: 175
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc27"),
    name: 'Ishaan Verma',
    department: 'Computer Science',
    totalScore: 177
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc21"),
    name: 'Nina Patel',
    department: 'Biotech',
    totalScore: 178
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc30"),
    name: 'Divya Raj',
    department: 'Electronics',
    totalScore: 182
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    department: 'Computer Science',
    totalScore: 185
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2f"),
    name: 'Karan Mehta',
    department: 'Computer Science',
    totalScore: 188
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc28"),
    name: 'Meera Joshi',
    department: 'Mathematics',
    totalScore: 189
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    department: 'Computer Science',
    totalScore: 189
  }
]
studentsdetails> db.students.aggregate([{$group:{_id:null,uniqueCity:{$addToSet:"$address.city"}}},{$project:{_id:0,uniqueCity:1}}])
[
  {
    uniqueCity: [
      'Mumbai',
      'Bangalore',
      'Chennai',
      'Lucknow',
      'Bhopal',
      'Delhi',
      'Hyderabad',
      'Kochi',
      'Jaipur',
      'Pune',
      'Ahmedabad',
      'Thiruvananthapuram',
      'Nagpur',
      'Surat'
    ]
  }
]

Projections
studentsdetails> db.students.find({},{_id:0,name:1,department:1,"address.city":1})
[
  {
    name: 'Ayaan Khan',
    department: 'Computer Science',
    address: { city: 'Hyderabad' }
  },
  {
    name: 'Emily Watson',
    department: 'Mechanical',
    address: { city: 'Delhi' }
  },
  {
    name: 'Rahul Sharma',
    department: 'Electronics',
    address: { city: 'Chennai' }
  },
  {
    name: 'Nina Patel',
    department: 'Biotech',
    address: { city: 'Bangalore' }
  },
  {
    name: 'Sara Lee',
    department: 'Computer Science',
    address: { city: 'Hyderabad' }
  },
  {
    name: 'Michael Chen',
    department: 'Mathematics',
    address: { city: 'Mumbai' }
  },
  {
    name: 'Aliya Rahman',
    department: 'Mechanical',
    address: { city: 'Delhi' }
  },
  {
    name: 'Kabir Das',
    department: 'Electronics',
    address: { city: 'Chennai' }
  },
  {
    name: 'Fatima Noor',
    department: 'Biotech',
    address: { city: 'Bangalore' }
  },
  {
    name: 'Ishaan Verma',
    department: 'Computer Science',
    address: { city: 'Pune' }
  },
  {
    name: 'Meera Joshi',
    department: 'Mathematics',
    address: { city: 'Ahmedabad' }
  },
  {
    name: 'Arjun Nair',
    department: 'Computer Science',
    address: { city: 'Kochi' }
  },
  {
    name: 'Priya Sinha',
    department: 'Mechanical',
    address: { city: 'Bhopal' }
  },
  {
    name: 'Ravi Teja',
    department: 'Electronics',
    address: { city: 'Hyderabad' }
  },
  {
    name: 'Tanya Kapoor',
    department: 'Computer Science',
    address: { city: 'Jaipur' }
  },
  {
    name: 'Manoj Pillai',
    department: 'Biotech',
    address: { city: 'Thiruvananthapuram' }
  },
  {
    name: 'Sneha Desai',
    department: 'Mathematics',
    address: { city: 'Surat' }
  },
  {
    name: 'Karan Mehta',
    department: 'Computer Science',
    address: { city: 'Nagpur' }
  },
  {
    name: 'Divya Raj',
    department: 'Electronics',
    address: { city: 'Lucknow' }
  }
]
studentsdetails> db.students.find({},{_id:0})
[
  {
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Emily Watson',
    age: 23,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'Java', score: 96 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 587520 },
    enrollmentDate: ISODate("2023-06-06T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Rahul Sharma',
    age: 22,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'MongoDB', score: 66 }, { name: 'C++', score: 69 } ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 586248 },
    enrollmentDate: ISODate("2023-11-21T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Nina Patel',
    age: 25,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'Python', score: 100 }, { name: 'C++', score: 78 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 585730 },
    enrollmentDate: ISODate("2024-03-07T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Michael Chen',
    age: 25,
    gender: 'Male',
    department: 'Mathematics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 70 } ],
    address: { city: 'Mumbai', state: 'Maharashtra', pincode: 572794 },
    enrollmentDate: ISODate("2023-12-25T00:00:00.000Z"),
    isActive: false
  },
  {
    name: 'Aliya Rahman',
    age: 21,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 95 }, { name: 'Java', score: 62 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 535282 },
    enrollmentDate: ISODate("2024-04-18T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Kabir Das',
    age: 24,
    gender: 'Male',
    department: 'Electronics',
    courses: [
      { name: 'Data Structures', score: 94 },
      { name: 'MongoDB', score: 73 }
    ],
    address: { city: 'Chennai', state: 'Tamil Nadu', pincode: 573482 },
    enrollmentDate: ISODate("2024-03-14T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Fatima Noor',
    age: 24,
    gender: 'Female',
    department: 'Biotech',
    courses: [ { name: 'MongoDB', score: 63 }, { name: 'Node.js', score: 64 } ],
    address: { city: 'Bangalore', state: 'Karnataka', pincode: 596283 },
    enrollmentDate: ISODate("2023-12-20T00:00:00.000Z"),
    isActive: false
  },
  {
    name: 'Ishaan Verma',
    age: 22,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 77 } ],
    address: { city: 'Pune', state: 'Maharashtra', pincode: 411001 },
    enrollmentDate: ISODate("2024-02-10T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Meera Joshi',
    age: 20,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 89 }, { name: 'Python', score: 100 } ],
    address: { city: 'Ahmedabad', state: 'Gujarat', pincode: 380001 },
    enrollmentDate: ISODate("2024-01-15T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Arjun Nair',
    age: 24,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 79 }, { name: 'Java', score: 84 } ],
    address: { city: 'Kochi', state: 'Kerala', pincode: 682001 },
    enrollmentDate: ISODate("2023-09-05T00:00:00.000Z"),
    isActive: false
  },
  {
    name: 'Priya Sinha',
    age: 21,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'Python', score: 100 }, { name: 'C++', score: 72 } ],
    address: { city: 'Bhopal', state: 'Madhya Pradesh', pincode: 462001 },
    enrollmentDate: ISODate("2024-05-20T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Ravi Teja',
    age: 26,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'Node.js', score: 91 }, { name: 'C++', score: 87 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 500084 },
    enrollmentDate: ISODate("2023-07-11T00:00:00.000Z"),
    isActive: false
  },
  {
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: { city: 'Jaipur', state: 'Rajasthan', pincode: 302001 },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Manoj Pillai',
    age: 22,
    gender: 'Male',
    department: 'Biotech',
    courses: [ { name: 'Java', score: 75 }, { name: 'Python', score: 100 } ],
    address: { city: 'Thiruvananthapuram', state: 'Kerala', pincode: 695001 },
    enrollmentDate: ISODate("2024-06-25T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Sneha Desai',
    age: 19,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 83 }, { name: 'Node.js', score: 85 } ],
    address: { city: 'Surat', state: 'Gujarat', pincode: 395003 },
    enrollmentDate: ISODate("2023-10-01T00:00:00.000Z"),
    isActive: false
  },
  {
    name: 'Karan Mehta',
    age: 23,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'Java', score: 88 } ],
    address: { city: 'Nagpur', state: 'Maharashtra', pincode: 440001 },
    enrollmentDate: ISODate("2024-01-01T00:00:00.000Z"),
    isActive: true
  },
  {
    name: 'Divya Raj',
    age: 21,
    gender: 'Female',
    department: 'Electronics',
    courses: [ { name: 'Python', score: 100 }, { name: 'Node.js', score: 82 } ],
    address: { city: 'Lucknow', state: 'Uttar Pradesh', pincode: 226001 },
    enrollmentDate: ISODate("2024-04-12T00:00:00.000Z"),
    isActive: true
  }
]
studentsdetails> db.students.aggregate([{$project:{_id:0,name:1,totalScore:{$sum:"$courses.score"}}}])
[
  { name: 'Ayaan Khan', totalScore: 185 },
  { name: 'Emily Watson', totalScore: 162 },
  { name: 'Rahul Sharma', totalScore: 135 },
  { name: 'Nina Patel', totalScore: 178 },
  { name: 'Sara Lee', totalScore: 166 },
  { name: 'Michael Chen', totalScore: 170 },
  { name: 'Aliya Rahman', totalScore: 157 },
  { name: 'Kabir Das', totalScore: 167 },
  { name: 'Fatima Noor', totalScore: 127 },
  { name: 'Ishaan Verma', totalScore: 177 },
  { name: 'Meera Joshi', totalScore: 189 },
  { name: 'Arjun Nair', totalScore: 163 },
  { name: 'Priya Sinha', totalScore: 172 },
  { name: 'Ravi Teja', totalScore: 178 },
  { name: 'Tanya Kapoor', totalScore: 189 },
  { name: 'Manoj Pillai', totalScore: 175 },
  { name: 'Sneha Desai', totalScore: 168 },
  { name: 'Karan Mehta', totalScore: 188 },
  { name: 'Divya Raj', totalScore: 182 }
]

Embedded Documents
studentsdetails> db.students.find({"address.city":"Hyderabad"})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc1d"),
    name: 'Ayaan Khan',
    age: 21,
    gender: 'Male',
    department: 'Computer Science',
    courses: [ { name: 'MongoDB', score: 85 }, { name: 'Python', score: 100 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 586198 },
    enrollmentDate: ISODate("2023-02-17T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833eb29bd4812b7c379dc22"),
    name: 'Sara Lee',
    age: 22,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Java', score: 83 }, { name: 'C++', score: 83 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 552756 },
    enrollmentDate: ISODate("2023-04-02T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2b"),
    name: 'Ravi Teja',
    age: 26,
    gender: 'Male',
    department: 'Electronics',
    courses: [ { name: 'Node.js', score: 91 }, { name: 'C++', score: 87 } ],
    address: { city: 'Hyderabad', state: 'Telangana', pincode: 500084 },
    enrollmentDate: ISODate("2023-07-11T00:00:00.000Z"),
    isActive: false
  }
]
studentsdetails> db.students.updateOne({name:'Ravi Teja'},{$set:{"address.pincode":544470}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
studentsdetails> db.students.updateMany({},{$set:{"address.landmark":""}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 19,
  modifiedCount: 19,
  upsertedCount: 0
}

Array Operations
studentsdetails> db.students.updateOne({name:"Ayaan Khan"},{$push:{courses:{name:"Node.js",score:0}}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
studentsdetails> db.students.updateOne({name:"Ayaan Khan"},{$pull:{courses:{name:"MongoDB"}}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
studentsdetails> db.students.find({"courses.name":{$all:["Python","MongoDB"]}})
[
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc28"),
    name: 'Meera Joshi',
    age: 20,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 89 }, { name: 'Python', score: 100 } ],
    address: {
      city: 'Ahmedabad',
      state: 'Gujarat',
      pincode: 380001,
      landmark: ''
    },
    enrollmentDate: ISODate("2024-01-15T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: {
      city: 'Jaipur',
      state: 'Rajasthan',
      pincode: 302001,
      landmark: ''
    },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  }
]
studentsdetails> db.students.find({courses:{$elemMatch:{name:"MongoDB",score:{$gt:80}}}})
[
  {
    _id: ObjectId("6833eb29bd4812b7c379dc24"),
    name: 'Aliya Rahman',
    age: 21,
    gender: 'Female',
    department: 'Mechanical',
    courses: [ { name: 'MongoDB', score: 95 }, { name: 'Java', score: 62 } ],
    address: { city: 'Delhi', state: 'Delhi', pincode: 535282, landmark: '' },
    enrollmentDate: ISODate("2024-04-18T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc28"),
    name: 'Meera Joshi',
    age: 20,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 89 }, { name: 'Python', score: 100 } ],
    address: {
      city: 'Ahmedabad',
      state: 'Gujarat',
      pincode: 380001,
      landmark: ''
    },
    enrollmentDate: ISODate("2024-01-15T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2c"),
    name: 'Tanya Kapoor',
    age: 23,
    gender: 'Female',
    department: 'Computer Science',
    courses: [ { name: 'Python', score: 100 }, { name: 'MongoDB', score: 89 } ],
    address: {
      city: 'Jaipur',
      state: 'Rajasthan',
      pincode: 302001,
      landmark: ''
    },
    enrollmentDate: ISODate("2023-03-08T00:00:00.000Z"),
    isActive: true
  },
  {
    _id: ObjectId("6833ebc1bd4812b7c379dc2e"),
    name: 'Sneha Desai',
    age: 19,
    gender: 'Female',
    department: 'Mathematics',
    courses: [ { name: 'MongoDB', score: 83 }, { name: 'Node.js', score: 85 } ],
    address: { city: 'Surat', state: 'Gujarat', pincode: 395003, landmark: '' },
    enrollmentDate: ISODate("2023-10-01T00:00:00.000Z"),
    isActive: false
  }
]