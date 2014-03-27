# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  # Seed Hotels
  wynn = Hotel.create(name: "Wynn", num_rooms: 500, city: "Las Vegas", state: "NV")
  mResort = Hotel.create(name: "M Resort", num_rooms: 300, city: "Las Vegas", state: "NV")
  theEncore = Hotel.create(name: "The Encore", num_rooms: 400, city: "Las Vegas", state: "NV")



  # Seed Rooms
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
  
  # Seed Menu Items
  wynn.menu_items.create(name: "Steak", description: "20oz Ribeye with pepper sauce and served with fries", price: "30.00")
  wynn.menu_items.create(name: "Grilled Salmon", description: "Healthy grilled Salmon with sauteed vegetables", price: "27.00")
  wynn.menu_items.create(name: "Spaghetti with Meatballs", description: "Delicious spaghetti with homemade sauce and meatballs", price: "24.00")
  wynn.menu_items.create(name: "Pancakes", description: "Stack of 3 pancakes with maple syrup and whipped cream", price: "20.00")
  
  mResort.menu_items.create(name: "Steak", description: "20oz Ribeye with pepper sauce and served with fries", price: "30.00")
  mResort.menu_items.create(name: "Grilled Salmon", description: "Healthy grilled Salmon with sauteed vegetables", price: "27.00")
  mResort.menu_items.create(name: "Spaghetti with Meatballs", description: "Delicious spaghetti with homemade sauce and meatballs", price: "24.00")
  mResort.menu_items.create(name: "Pancakes", description: "Stack of 3 pancakes with maple syrup and whipped cream", price: "20.00")

  theEncore.menu_items.create(name: "Steak", description: "20oz Ribeye with pepper sauce and served with fries", price: "30.00")
  theEncore.menu_items.create(name: "Grilled Salmon", description: "Healthy grilled Salmon with sauteed vegetables", price: "27.00")
  theEncore.menu_items.create(name: "Spaghetti with Meatballs", description: "Delicious spaghetti with homemade sauce and meatballs", price: "24.00")
  theEncore.menu_items.create(name: "Pancakes", description: "Stack of 3 pancakes with maple syrup and whipped cream", price: "20.00")
