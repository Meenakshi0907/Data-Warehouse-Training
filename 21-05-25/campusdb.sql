test> use campusdb
switched to db campusdb

campusdb> db.enrollments.insertMany([
... {
... name: "Ananya Verma",
... studentId: 101,
... courses: ["Python", "Java"],
... address: { city: "Delhi", state: "Delhi" },
... feesPaid: true
... },
... {
... name: "Rohan Mehta",
... studentId: 102,
... courses: ["Python", "AI"],
... address: { city: "Bangalore", state: "Karnataka" },
... feesPaid: false
... },
... {
... name: "Sneha Kapoor",
... studentId: 103,
... courses: [],
... address: { city: "Hyderabad", state: "Telangana" },
... feesPaid: true
... },
... {
... name: "Imran Shaikh",
... studentId: 104,
... courses: ["Data Science", "Java"],
... address: { city: "Delhi", state: "Delhi" },
... feesPaid: false
... }
... ])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("682d4fd8b751fcc89fe93c11"),
    '1': ObjectId("682d4fd8b751fcc89fe93c12"),
    '2': ObjectId("682d4fd8b751fcc89fe93c13"),
    '3': ObjectId("682d4fd8b751fcc89fe93c14")
  }
}

campusdb> db.enrollments.find()
[
  {
    _id: ObjectId("682d4fd8b751fcc89fe93c11"),
    name: 'Ananya Verma',
    studentId: 101,
    courses: [ 'Python', 'Java' ],
    address: { city: 'Delhi', state: 'Delhi' },
    feesPaid: true
  },
  {
    _id: ObjectId("682d4fd8b751fcc89fe93c12"),
    name: 'Rohan Mehta',
    studentId: 102,
    courses: [ 'Python', 'AI' ],
    address: { city: 'Bangalore', state: 'Karnataka' },
    feesPaid: false
  },
  {
    _id: ObjectId("682d4fd8b751fcc89fe93c13"),
    name: 'Sneha Kapoor',
    studentId: 103,
    courses: [],
    address: { city: 'Hyderabad', state: 'Telangana' },
    feesPaid: true
  },
  {
    _id: ObjectId("682d4fd8b751fcc89fe93c14"),
    name: 'Imran Shaikh',
    studentId: 104,
    courses: [ 'Data Science', 'Java' ],
    address: { city: 'Delhi', state: 'Delhi' },
    feesPaid: false
  }
]

campusdb> db.enrollments.find({courses:"Python"})
[
  {
    _id: ObjectId("682d4fd8b751fcc89fe93c11"),
    name: 'Ananya Verma',
    studentId: 101,
    courses: [ 'Python', 'Java' ],
    address: { city: 'Delhi', state: 'Delhi' },
    feesPaid: true
  },
  {
    _id: ObjectId("682d4fd8b751fcc89fe93c12"),
    name: 'Rohan Mehta',
    studentId: 102,
    courses: [ 'Python', 'AI' ],
    address: { city: 'Bangalore', state: 'Karnataka' },
    feesPaid: false
  }
]

campusdb> db.enrollments.find({"address.city":"Delhi",feesPaid: false})
[
  {
    _id: ObjectId("682d4fd8b751fcc89fe93c14"),
    name: 'Imran Shaikh',
    studentId: 104,
    courses: [ 'Data Science', 'Java' ],
    address: { city: 'Delhi', state: 'Delhi' },
    feesPaid: false
  }
]

campusdb> db.enrollments.updateOne({studentId:103},{$addToSet:{courses:"AI Fundamentals"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

campusdb> db.enrollments.updateOne({studentId:102},{$set:{"address.city":"Mumbai"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

campusdb> db.enrollments.updateOne({"address.city":"Delhi"},{$set:{feesPaid:true}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 0,
  upsertedCount: 0
}

campusdb> db.enrollments.updateMany({courses:"Java"},{$pull:{courses:"Java"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 2,
  modifiedCount: 2,
  upsertedCount: 0
}

campusdb> db.enrollments.deleteMany({courses: {$size: 0}})
{ acknowledged: true, deletedCount: 0 }