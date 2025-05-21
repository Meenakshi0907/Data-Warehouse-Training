bugs> use bugtracker
switched to db bugtracker

bugtracker> db.bugs.insertMany([
... {title: "Login button not responsive",reportedBy:"Alice Smith",status:"Open",priority:"High",createdAt: new Date()},
... {title: "Profile pic error",reportedBy:"Bob Johson",status:"In progress",priority:"Medium",createdAt: new Date()},
... {title: "Search bar error",reportedBy:"Charlie Bob",status:"Closed",priority:"Closed",createdAt: new Date()}])
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId("682db60db751fcc89fe93c1a"),
    '1': ObjectId("682db60db751fcc89fe93c1b"),
    '2': ObjectId("682db60db751fcc89fe93c1c")
  }
}

bugtracker> db.bugs.find({status: "Open",priority: "High"})
[
  {
    _id: ObjectId("682db60db751fcc89fe93c1a"),
    title: 'Login button not responsive',
    reportedBy: 'Alice Smith',
    status: 'Open',
    priority: 'High',
    createdAt: ISODate("2025-05-21T11:16:29.640Z")
  }
]

bugtracker> db.bugs.updateOne({priority: "High"},{$set:{status:"Closed"}})
{
  acknowledged: true,
  insertedId: null,
  matchedCount: 1,
  modifiedCount: 1,
  upsertedCount: 0
}

bugtracker> db.bugs.deleteOne({reportedBy:"Charlie Bob"})
{ acknowledged: true, deletedCount: 1 }