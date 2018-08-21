puts "cleansing the requests"
Request.destroy_all
puts "cleansing the events"
Event.destroy_all
puts "cleansing the users"
User.destroy_all

puts "preparing user seeds"
# user seeds

#required fields: email, encrypted_password(str), name, user_bio (>20wd), user_photo(str)
bio = "Heirloom typewriter snackwave polaroid next level. Humblebrag bicycle rights hella church-key DIY, raclette kinfolk dreamcatcher tumeric. Venmo subway tile kinfolk hoodie sustainable, you probably haven't heard of them."
user1 = User.create(email: "test@test.com", password: "passWORD", name: "testo", user_bio: bio, user_photo: "photo")
user2 = User.create(email: "test2@test.com", password: "passWORD", name: "testy", user_bio: bio, user_photo: "photo")
user3 = User.create(email: "test3@test.com", password: "passWORD", name: "testum", user_bio: bio, user_photo: "photo")
user4 = User.create(email: "test4@test.com", password: "passWORD", name: "tester", user_bio: bio, user_photo: "photo")
user5 = User.create(email: "test5@test.com", password: "passWORD", name: "testerer", user_bio: bio, user_photo: "photo")

puts "USER SEEDED BITCHES"


puts "preparing event seeds"
# event seeds

#required fields: user_id, date(date_time), location, description(>20wd), category, group_size
event1 = Event.create(name: "event1", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
event2 = Event.create(name: "event2", user_id: user2.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
event3 = Event.create(name: "event3", user_id: user3.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "drinking", group_size: 8, group_photo: "photo", group_bio: bio)
event4 = Event.create(name: "event4", user_id: user4.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "drinking", group_size: 8, group_photo: "photo", group_bio: bio)
event5 = Event.create(name: "event5", user_id: user5.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
event6 = Event.create(name: "event6", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
event7 = Event.create(name: "event7", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
event8 = Event.create(name: "event8", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)

puts "EVENT SEEDED BITCHES"


puts "preparing request seeds"
# request seeds

#required fields: user_id, event_id, status, message,
Request.create(user_id: user2.id, event_id: event4.id, status: "pending", message: bio)
Request.create(user_id: user1.id, event_id: event3.id, status: "pending", message: bio)
Request.create(user_id: user5.id, event_id: event2.id, status: "pending", message: bio)
Request.create(user_id: user3.id, event_id: event1.id, status: "pending", message: bio)
Request.create(user_id: user4.id, event_id: event1.id, status: "pending", message: bio)
Request.create(user_id: user3.id, event_id: event6.id, status: "accepted", message: bio)
Request.create(user_id: user4.id, event_id: event8.id, status: "rejected", message: bio)
Request.create(user_id: user3.id, event_id: event8.id, status: "accepted", message: bio)

puts "REQUEST SEEDED BITCHES"













