Working with Schemas & Data Types
test> use trainingdb
switched to db trainingdb
trainingdb> db.employees.insertMany([
...   {
...     name: "Alice",
...     age: 28,
...     isManager: true,
...     skills: ["JavaScript", "Node.js", "MongoDB"],
...     joiningDate: new Date("2023-02-15"),
...     profile: {
...       linkedin: "https://linkedin.com/in/alice",
...       portfolio: "https://alice.dev"
...     }
...   },
...   {
...     name: "Bob",
...     age: 34,
...     isManager: false,
...     skills: ["Python", "Django"],
...     joiningDate: new Date("2022-07-20"),
...     profile: {
...       linkedin: "https://linkedin.com/in/bob",
...       portfolio: "https://bob.dev"
...     }
...   },
...   {
...     name: "Carol",
...     age: 30,
...     isManager: false,
...     skills: ["React", "Node.js", "Express", "MongoDB"],
...     joiningDate: new Date("2023-11-01"),
...     profile: {
...       linkedin: "https://linkedin.com/in/carol",
...       portfolio: "https://carol.dev"
...     }
...   },
...   {
...     name: "Dave",
...     age: 25,
...     isManager: true,
...     skills: ["Go", "Docker", "Kubernetes"],
...     joiningDate: new Date("2024-03-10"),
...     profile: {
...       linkedin: "https://linkedin.com/in/dave",
...       portfolio: "https://dave.dev"
...     }
...   }
... ])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("6832a39117ef98353b8acee2"),
    '1': ObjectId("6832a39117ef98353b8acee3"),
    '2': ObjectId("6832a39117ef98353b8acee4"),
    '3': ObjectId("6832a39117ef98353b8acee5")
  }
}

 db.employees.find({
... $and: [
... {"skills.2":{$exists:true}},{joiningDate: {$gt: new Date("2023-01-01")}}]})
[
  {
    _id: ObjectId("6832a39117ef98353b8acee2"),
    name: 'Alice',
    age: 28,
    isManager: true,
    skills: [ 'JavaScript', 'Node.js', 'MongoDB' ],
    joiningDate: ISODate("2023-02-15T00:00:00.000Z"),
    profile: {
      linkedin: 'https://linkedin.com/in/alice',
      portfolio: 'https://alice.dev'
    }
  },
  {
    _id: ObjectId("6832a39117ef98353b8acee4"),
    name: 'Carol',
    age: 30,
    isManager: false,
    skills: [ 'React', 'Node.js', 'Express', 'MongoDB' ],
    joiningDate: ISODate("2023-11-01T00:00:00.000Z"),
    profile: {
      linkedin: 'https://linkedin.com/in/carol',
      portfolio: 'https://carol.dev'
    }
  },
  {
    _id: ObjectId("6832a39117ef98353b8acee5"),
    name: 'Dave',
    age: 25,
    isManager: true,
    skills: [ 'Go', 'Docker', 'Kubernetes' ],
    joiningDate: ISODate("2024-03-10T00:00:00.000Z"),
    profile: {
      linkedin: 'https://linkedin.com/in/dave',
      portfolio: 'https://dave.dev'
    }
  }
]
trainingdb> db.employees.updateOne({
... name:'Alice'},{$set:{rating:4.5}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

db.employees.find({rating:{$type:"double"}})
[
  {
    _id: ObjectId("6832a39117ef98353b8acee2"),
    name: 'Alice',
    age: 28,
    isManager: true,
    skills: [ 'JavaScript', 'Node.js', 'MongoDB' ],
    joiningDate: ISODate("2023-02-15T00:00:00.000Z"),
    profile: {
      linkedin: 'https://linkedin.com/in/alice',
      portfolio: 'https://alice.dev'
    },
    rating: 4.5
  }
]

 db.employees.find({},{_id:0,name:1,skills:1})
[
  { name: 'Alice', skills: [ 'JavaScript', 'Node.js', 'MongoDB' ] },
  { name: 'Bob', skills: [ 'Python', 'Django' ] },
  {
    name: 'Carol',
    skills: [ 'React', 'Node.js', 'Express', 'MongoDB' ]
  },
  { name: 'Dave', skills: [ 'Go', 'Docker', 'Kubernetes' ] }
]

One-to-One (Embedded) 
trainingdb> use schooldb
switched to db schooldb
schooldb> db.students.insertMany([
...   {
...     name: "John",
...     age: 16,
...     guardian: {
...       name: "Mary",
...       phone: "9876543210",
...       relation: "Mother"
...     }
...   },
...   {
...     name: "Emma",
...     age: 17,
...     guardian: {
...       name: "David",
...       phone: "8765432109",
...       relation: "Father"
...     }
...   },
...   {
...     name: "Noah",
...     age: 15,
...     guardian: {
...       name: "Sophia",
...       phone: "7654321098",
...       relation: "Mother"
...     }
...   }
... ])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("6832a86428e83ec3e4cded54"),
    '1': ObjectId("6832a86428e83ec3e4cded55"),
    '2': ObjectId("6832a86428e83ec3e4cded56")
  }
}
schooldb> db.students.find({"guardian.relation":"Mother"})
[
  {
    _id: ObjectId("6832a86428e83ec3e4cded54"),
    name: 'John',
    age: 16,
    guardian: { name: 'Mary', phone: '9876543210', relation: 'Mother' }
  },
  {
    _id: ObjectId("6832a86428e83ec3e4cded56"),
    name: 'Noah',
    age: 15,
    guardian: { name: 'Sophia', phone: '7654321098', relation: 'Mother' }
  }
]
schooldb> db.students.updateOne({name:"John"},{$set:{"guardian.phone":123456789}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

Section 3: One-to-Many (Embedded) 
schooldb> db.teachers.insertMany([
...   {
...     name: "Mr. Smith",
...     subjects: ["Math", "Physics"]
...   },
...   {
...     name: "Ms. Johnson",
...     subjects: ["Biology", "Chemistry"]
...   },
...   {
...     name: "Mr. Lee",
...     subjects: ["Physics", "Computer Science"]
...   }
... ])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("6832a9e728e83ec3e4cded57"),
    '1': ObjectId("6832a9e728e83ec3e4cded58"),
    '2': ObjectId("6832a9e728e83ec3e4cded59")
  }
}
schooldb> db.teachers.find({subjects: "Physics"})
[
  {
    _id: ObjectId("6832a9e728e83ec3e4cded57"),
    name: 'Mr. Smith',
    subjects: [ 'Math', 'Physics' ]
  },
  {
    _id: ObjectId("6832a9e728e83ec3e4cded59"),
    name: 'Mr. Lee',
    subjects: [ 'Physics', 'Computer Science' ]
  }
]
schooldb> db.teachers.updateOne({name: "Mr. Lee"},{$addToSet:{subjects: "Robotics"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
schooldb> db.teachers.updateOne({name: "Mr. Smith"},{$pull:{subjects: "Math"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

Section 4: One-to-Many (Referenced) 
schooldb> use academia
switched to db academia

db.courses.insertMany([
... {title: "Machine Learning",credits: 4},
... {title: "Data Science",credits: 3}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("6832adac28e83ec3e4cded5c"),
    '1': ObjectId("6832adac28e83ec3e4cded5d")
  }
}
academia> let mlcourse = ObjectId("6832adac28e83ec3e4cded5c")

academia> let dscourse = ObjectId("6832adac28e83ec3e4cded5d")

academia> db.students.insertMany([
... {name: "Alice",enrollment: mlcourse},
... {name: "Bob",enrollment: dscourse}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("6832ae5128e83ec3e4cded5e"),
    '1': ObjectId("6832ae5128e83ec3e4cded5f")
  }
}
academia> db.students.find({enrollment: mlcourse})
[
  {
    _id: ObjectId("6832ae5128e83ec3e4cded5e"),
    name: 'Alice',
    enrollment: ObjectId("6832adac28e83ec3e4cded5c")
  }
]
academia> db.courses.findOne({ _id: mlcourse })
{
  _id: ObjectId("6832adac28e83ec3e4cded5c"),
  title: 'Machine Learning',
  credits: 4
}

Section 5: $lookup (Join in Aggregation) 
db.students.aggregate([ { $lookup: { from: "courses", localField: "enrollment", foreignField: "_id", as: "CourseDeatils" } }] )
[
  {
    _id: ObjectId("6832ae5128e83ec3e4cded5e"),
    name: 'Alice',
    enrollment: ObjectId("6832adac28e83ec3e4cded5c"),
    CourseDeatils: [
      {
        _id: ObjectId("6832adac28e83ec3e4cded5c"),
        title: 'Machine Learning',
        credits: 4
      }
    ]
  },
  {
    _id: ObjectId("6832ae5128e83ec3e4cded5f"),
    name: 'Bob',
    enrollment: ObjectId("6832adac28e83ec3e4cded5d"),
    CourseDeatils: [
      {
        _id: ObjectId("6832adac28e83ec3e4cded5d"),
        title: 'Data Science',
        credits: 3
      }
    ]
  }
]
academia> db.students.aggregate([ { $lookup: { from: "courses", localField: "enrollment", foreignField: "_id", as: "CourseDeatils" }},
... {$project: {_id: 0,name:1,courseTitle:{$arrayElemAt:["$CourseDeatils.title",0]}}}])
[
  { name: 'Alice', courseTitle: 'Machine Learning' },
  { name: 'Bob', courseTitle: 'Data Science' }
]

academia> db.students.aggregate([{ $lookup: { from: "courses", localField: "enrollment", foreignField: "_id", as: "CourseDeatils" } },{$match:{"CourseDeatils.title":"Machine Learning"}},{ $project: { _id: 0, name: 1, courseTitle: { $arrayElemAt: ["$CourseDeatils.title", 0] } } }])
[ { name: 'Alice', courseTitle: 'Machine Learning' } ]