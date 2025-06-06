Section 1: Basic Document Modeling & Insertion 
test> use taskmanager
switched to db taskmanager
taskmanager> db.users.insertMany([
...   { name: "Alice", email: "alice@example.com", role: "admin", active: true },
...   { name: "Bob", email: "bob@example.com", role: "manager", active: true },
...   { name: "Charlie", email: "charlie@example.com", role: "developer", active: false }
... ])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("68332236a4c0e46c62664ecf"),
    '1': ObjectId("68332236a4c0e46c62664ed0"),
    '2': ObjectId("68332236a4c0e46c62664ed1")
  }
}
taskmanager> const creator = db.users.findOne({ name: "Alice" });

taskmanager> db.projects.insertMany([
...   {
...     title: "Website Revamp",
...     description: "Redesigning the company website",
...     startDate: new Date("2025-05-01"),
...     status: "active",
...     createdBy: { _id: creator._id, name: creator.name }
...   },
...   {
...     title: "App Launch",
...     description: "Launching the new mobile app",
...     startDate: new Date("2025-04-20"),
...     status: "completed",
...     createdBy: { _id: creator._id, name: creator.name }
...   }
... ])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("68332289a4c0e46c62664ed2"),
    '1': ObjectId("68332289a4c0e46c62664ed3")
  }
}
taskmanager> const userBob = db.users.findOne({ name: "Bob" });

taskmanager> const userCharlie = db.users.findOne({ name: "Charlie" });

taskmanager> const websiteRevampProject = db.projects.findOne({ title: "Website Revamp" });

taskmanager> const appLaunchProject = db.projects.findOne({ title: "App Launch" });

taskmanager> db.tasks.insertMany([
...   {
...     title: "Setup project structure",
...     assignedTo: userBob._id,
...     projectId: websiteRevampProject._id,
...     priority: "high",
...     dueDate: new Date("2025-06-01"),
...     status: "pending"
...   },
...   {
...     title: "UI design",
...     assignedTo: userCharlie._id,
...     projectId: websiteRevampProject._id,
...     priority: "medium",
...     dueDate: new Date("2025-06-05"),
...     status: "in progress"
...   },
...   {
...     title: "Backend API",
...     assignedTo: userBob._id,
...     projectId: appLaunchProject._id,
...     priority: "high",
...     dueDate: new Date("2025-06-10"),
...     status: "pending"
...   },
...   {
...     title: "Testing",
...     assignedTo: userCharlie._id,
...     projectId: appLaunchProject._id,
...     priority: "low",
...     dueDate: new Date("2025-06-15"),
...     status: "not started"
...   },
...   {
...     title: "Deployment",
...     assignedTo: userBob._id,
...     projectId: websiteRevampProject._id,
...     priority: "high",
...     dueDate: new Date("2025-06-20"),
...     status: "pending"
...   }
... ]);
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("68332475a4c0e46c62664ed4"),
    '1': ObjectId("68332475a4c0e46c62664ed5"),
    '2': ObjectId("68332475a4c0e46c62664ed6"),
    '3': ObjectId("68332475a4c0e46c62664ed7"),
    '4': ObjectId("68332475a4c0e46c62664ed8")
  }
}

Section 2: Filtering & Querying
taskmanager> db.tasks.find({priority:"high",status:{$ne: "completed"}})
[
  {
    _id: ObjectId("68332475a4c0e46c62664ed4"),
    title: 'Setup project structure',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed2"),
    priority: 'high',
    dueDate: ISODate("2025-06-01T00:00:00.000Z"),
    status: 'pending'
  },
  {
    _id: ObjectId("68332475a4c0e46c62664ed6"),
    title: 'Backend API',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed3"),
    priority: 'high',
    dueDate: ISODate("2025-06-10T00:00:00.000Z"),
    status: 'pending'
  },
  {
    _id: ObjectId("68332475a4c0e46c62664ed8"),
    title: 'Deployment',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed2"),
    priority: 'high',
    dueDate: ISODate("2025-06-20T00:00:00.000Z"),
    status: 'pending'
  }
]
taskmanager> db.user.find({role:"developer",active:true})

taskmanager> db.tasks.find({assignedTo: ObjectId("68332236a4c0e46c62664ed0")})
[
  {
    _id: ObjectId("68332475a4c0e46c62664ed4"),
    title: 'Setup project structure',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed2"),
    priority: 'high',
    dueDate: ISODate("2025-06-01T00:00:00.000Z"),
    status: 'pending'
  },
  {
    _id: ObjectId("68332475a4c0e46c62664ed6"),
    title: 'Backend API',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed3"),
    priority: 'high',
    dueDate: ISODate("2025-06-10T00:00:00.000Z"),
    status: 'pending'
  },
  {
    _id: ObjectId("68332475a4c0e46c62664ed8"),
    title: 'Deployment',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed2"),
    priority: 'high',
    dueDate: ISODate("2025-06-20T00:00:00.000Z"),
    status: 'pending'
  }
]
taskmanager> const setTodaysDate = new Date()

taskmanager> setTodaysDate.setDate(setTodaysDate.getDate()-30)
1745590713639
taskmanager> db.projects.find({startDate:{$gte:setTodaysDate}})
[
  {
    _id: ObjectId("68332289a4c0e46c62664ed2"),
    title: 'Website Revamp',
    description: 'Redesigning the company website',
    startDate: ISODate("2025-05-01T00:00:00.000Z"),
    status: 'active',
    createdBy: { _id: ObjectId("68332236a4c0e46c62664ecf"), name: 'Alice' }
  }
]

Section 3: Update Operations
taskmanager> db.tasks.updateOne({title: "Backend API"},{$set:{status:'completed'}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
taskmanager> db.users.updateOne({name:"Charlie"},{$set:{role:"teamLead"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
taskmanager> db.tasks.updateOne({title:"Backend API"},{$set:{tags:["urgent","frontend"]}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
taskmanager> db.tasks.updateOne({title:"Backend API"},{$addToSet:{tags: "UI"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

Section 4: Array and Subdocument Operations
taskmanager> db.tasks.updateOne({title:"Backend API"},{$addToSet:{tags: "UI"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
taskmanager> db.tasks.updateOne({title:"Backend API"},{$pull:{tags: "frontend"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}
taskmanager> db.projects.updateOne({title:"Website Revamp"},{$inc:{progress:10}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

Section 5: Aggregation & Lookup
taskmanager> db.tasks.aggregate([{$lookup:{from:"users",localField:"assignedTo",foreignField:"_id",as:"assignee"}},{$unwind:"$assignee"},{$project:{_id:0,taskTitle:"$title",assigneeName:"$assignee.name"}}])
[
  { taskTitle: 'Setup project structure', assigneeName: 'Bob' },
  { taskTitle: 'UI design', assigneeName: 'Charlie' },
  { taskTitle: 'Backend API', assigneeName: 'Bob' },
  { taskTitle: 'Testing', assigneeName: 'Charlie' },
  { taskTitle: 'Deployment', assigneeName: 'Bob' }
]
taskmanager> db.tasks.aggregate([
...   {
...     $lookup: {
...       from: "projects",
...       localField: "projectId",
...       foreignField: "_id",
...       as: "project"
...     }
...   },
...   { $unwind: "$project" },
...   { $match: { "project.status": "active" } }
... ]);
[
  {
    _id: ObjectId("68332475a4c0e46c62664ed4"),
    title: 'Setup project structure',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed2"),
    priority: 'high',
    dueDate: ISODate("2025-06-01T00:00:00.000Z"),
    status: 'pending',
    project: {
      _id: ObjectId("68332289a4c0e46c62664ed2"),
      title: 'Website Revamp',
      description: 'Redesigning the company website',
      startDate: ISODate("2025-05-01T00:00:00.000Z"),
      status: 'active',
      createdBy: { _id: ObjectId("68332236a4c0e46c62664ecf"), name: 'Alice' },
      progress: 10
    }
  },
  {
    _id: ObjectId("68332475a4c0e46c62664ed5"),
    title: 'UI design',
    assignedTo: ObjectId("68332236a4c0e46c62664ed1"),
    projectId: ObjectId("68332289a4c0e46c62664ed2"),
    priority: 'medium',
    dueDate: ISODate("2025-06-05T00:00:00.000Z"),
    status: 'in progress',
    project: {
      _id: ObjectId("68332289a4c0e46c62664ed2"),
      title: 'Website Revamp',
      description: 'Redesigning the company website',
      startDate: ISODate("2025-05-01T00:00:00.000Z"),
      status: 'active',
      createdBy: { _id: ObjectId("68332236a4c0e46c62664ecf"), name: 'Alice' },
      progress: 10
    }
  },
  {
    _id: ObjectId("68332475a4c0e46c62664ed8"),
    title: 'Deployment',
    assignedTo: ObjectId("68332236a4c0e46c62664ed0"),
    projectId: ObjectId("68332289a4c0e46c62664ed2"),
    priority: 'high',
    dueDate: ISODate("2025-06-20T00:00:00.000Z"),
    status: 'pending',
    project: {
      _id: ObjectId("68332289a4c0e46c62664ed2"),
      title: 'Website Revamp',
      description: 'Redesigning the company website',
      startDate: ISODate("2025-05-01T00:00:00.000Z"),
      status: 'active',
      createdBy: { _id: ObjectId("68332236a4c0e46c62664ecf"), name: 'Alice' },
      progress: 10
    }
  }
]
taskmanager> db.tasks.aggregate([
...   {
...     $group: {
...       _id: "$status",
...       count: { $sum: 1 }
...     }
...   }
... ]);
[
  { _id: 'in progress', count: 1 },
  { _id: 'completed', count: 1 },
  { _id: 'pending', count: 2 },
  { _id: 'not started', count: 1 }
]
taskmanager> db.tasks.aggregate([
...   { $match: { status: { $ne: "completed" } } },
...   { $sort: { dueDate: 1 } },
...   { $limit: 3 },
...   {
...     $project: {
...       _id: 0,
...       title: 1,
...       dueDate: 1
...     }
...   }
... ]);
[
  {
    title: 'Setup project structure',
    dueDate: ISODate("2025-06-01T00:00:00.000Z")
  },
  { title: 'UI design', dueDate: ISODate("2025-06-05T00:00:00.000Z") },
  { title: 'Testing', dueDate: ISODate("2025-06-15T00:00:00.000Z") }
]