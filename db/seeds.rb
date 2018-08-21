puts "cleansing the users"
User.destroy_all
puts "preparing user seeds"
# user seeds

#required fields: email, encrypted_password(str), name, user_bio (>20wd), user_photo(str)
bio = "Heirloom typewriter snackwave polaroid next level. Humblebrag bicycle rights hella church-key DIY, raclette kinfolk dreamcatcher tumeric. Venmo subway tile kinfolk hoodie sustainable, you probably haven't heard of them."
User.create(email: "test@test.com", password: "passWORD", name: "testo", user_bio: bio, user_photo: "photo")
User.create(email: "test2@test.com", password: "passWORD", name: "testy", user_bio: bio, user_photo: "photo")
User.create(email: "test3@test.com", password: "passWORD", name: "testum", user_bio: bio, user_photo: "photo")
User.create(email: "test4@test.com", password: "passWORD", name: "tester", user_bio: bio, user_photo: "photo")
User.create(email: "test5@test.com", password: "passWORD", name: "testerer", user_bio: bio, user_photo: "photo")

puts "SEEDED BITCHES"
