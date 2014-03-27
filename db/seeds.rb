# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  wynn = Hotel.create(name: "Wynn", num_rooms: 500, city: "Las Vegas", state: "NV")
  mResort = Hotel.create(name: "M Resort", num_rooms: 300, city: "Las Vegas", state: "NV")
  theEncore = Hotel.create(name: "The Encore", num_rooms: 400, city: "Las Vegas", state: "NV")

  wynn.rooms.create(room_num: 101, vacant_stat: true)
  wynn.rooms.create(room_num: 102, vacant_stat: true)
  wynn.rooms.create(room_num: 103, vacant_stat: true)
  wynn.rooms.create(room_num: 104, vacant_stat: true)
  wynn.rooms.create(room_num: 105, vacant_stat: true)
  wynn.rooms.create(room_num: 106, vacant_stat: true)
  wynn.rooms.create(room_num: 107, vacant_stat: true)
  wynn.rooms.create(room_num: 108, vacant_stat: true)
  wynn.rooms.create(room_num: 109, vacant_stat: true)
  wynn.rooms.create(room_num: 110, vacant_stat: true)
  
  mResort.rooms.create(room_num: 101, vacant_stat: true)
  mResort.rooms.create(room_num: 102, vacant_stat: true)
  mResort.rooms.create(room_num: 103, vacant_stat: true)
  mResort.rooms.create(room_num: 104, vacant_stat: true)
  mResort.rooms.create(room_num: 105, vacant_stat: true)
  mResort.rooms.create(room_num: 106, vacant_stat: true)
  mResort.rooms.create(room_num: 107, vacant_stat: true)
  mResort.rooms.create(room_num: 108, vacant_stat: true)
  mResort.rooms.create(room_num: 109, vacant_stat: true)
  mResort.rooms.create(room_num: 110, vacant_stat: true)

  theEncore.rooms.create(room_num: 101, vacant_stat: true)
  theEncore.rooms.create(room_num: 102, vacant_stat: true)
  theEncore.rooms.create(room_num: 103, vacant_stat: true)
  theEncore.rooms.create(room_num: 104, vacant_stat: true)
  theEncore.rooms.create(room_num: 105, vacant_stat: true)
  theEncore.rooms.create(room_num: 106, vacant_stat: true)
  theEncore.rooms.create(room_num: 107, vacant_stat: true)
  theEncore.rooms.create(room_num: 108, vacant_stat: true)
  theEncore.rooms.create(room_num: 109, vacant_stat: true)
  theEncore.rooms.create(room_num: 110, vacant_stat: true)
  
