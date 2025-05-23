use facultydb

db.professors.insertMany([
... {
...     name: "Dr. Kavita Iyer",
...     subject: "Mathematics",
...     experience: 10,
...     active: true
...   },
...   {
...     name: "Dr. Nikhil Sinha",
...     subject: "Physics",
...     experience: 5,
...     active: false
...   },
...   {
...     name: "Dr. Meera Das",
...     subject: "Chemistry",
...     experience: 8,
...     active: true
...   }
... ])

db.professors.find()

db.professors.find({active:true})

db.professors.updateOne({subject: 'Physics'},{$set: {experience: 6}})

db.professors.updateOne({subject: 'Physics'},{$set: {active: true}})

db.professors.deleteOne({subject: "Chemistry"})