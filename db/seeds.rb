puts "Cleansing the requests"
Request.destroy_all
puts "Cleansing the events"
Event.destroy_all
puts "Cleansing the users"
User.destroy_all

puts "Preparing user seeds"
# user seeds


names = %w[Mark John Jane Mary Joe Bob Jose Ramon Carlos Clement Roan Maria Freddie]
bios = [
  "I love my computer because all my friends live inside it.",
  "On a scale of 1 to 10, I am an 11",
  "I have never let my schooling interfere with my education.",
  "Out of my mind. Back in five minutes.",
  "REHAB is for quitters!",
  "Where the hell am I and how did I get here? ",
  "Shoot for the moon. Even if you miss, you’ll land among the stars.",
  "When I was nine years old, I fell in love with baseball and dreamed of playing first base. To aid me in my dream, my dad bought me a first baseman’s glove. When my friends and I gathered after school for an informal ball game, everyone knew to stay away from first. That was my spot.
  Then something happened to change that.",
  "When human beings experience trauma or severe life stressors, it is not uncommon for their lives to unravel. My great passion is bringing healing to people who have been through a traumatic/stressful experience. I help my clients, who include children, adults and families, to find healthy perceptions of themselves and strengthen their relationships so they can know themselves as peaceful, complete, whole and safe.
  I know that no single approach is the right one for every individual, and so I have been trained in a range of modalities including Relational Gestalt Therapy, Gestalt Play Therapy, Somatic Experiencing and NARM somatic approaches to the treatment of trauma.",
  "I am the founder of JUST Creative which is my design studio and graphic design blog.
  I specialize in logo design, branding, web design and offer design services to businesses of all sizes around the world, ultimately improving their bottom line by crafting creative solutions to their business problems.",
  "Heirloom typewriter snackwave polaroid next level. Humblebrag bicycle rights hella church-key DIY, raclette kinfolk dreamcatcher tumeric. Venmo subway tile kinfolk hoodie sustainable, you probably haven't heard of them."
]

group_photos = [
  "https://images.unsplash.com/photo-1529333166437-7750a6dd5a70?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=76ba3dc274cc7026595de36ee1d63da4&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1526485641275-3b11a42acd44?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a13c561193193aa9bbe97497c9eda2a7&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1523301343968-6a6ebf63c672?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=675d706c330862ec0a0b01703de8abba&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1520127877998-122c33e8eb38?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7a45ca2052a4522614afac29c1d5ed5c&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1517492243682-2cb93b25788b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bb5542611484a4eb0203495b315fba16&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1515552788982-9580e95b4987?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0bb567c84d519f938ac11f3e2c7d784b&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1511988617509-a57c8a288659?ixlib=rb-0.3.5&s=1ca6ab0b603b27a6303d7d66cdaf72ab&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1511306404404-ad607bd7c601?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d8ff6fccca0d4737885c31b66e76976d&auto=format&fit=crop&w=400&q=60"
]

user_photos = [
  "https://images.unsplash.com/photo-1529045221581-2d91dbc06256?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5d406c3c1c18d7ba81529512fe8e8313&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1519058082700-08a0b56da9b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=eefa9be00575de989c32ab5dbe1315a9&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1512663150964-d8f43c899f76?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b242aff1e8f815be2351dc01c195fd86&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1511546395756-590dffdcdbd1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fb6c2fb68225c3cfac850fdf4a4cee25&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1509670572852-5823184def8c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=32132399c827c2c8d36540312a4ec273&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1507197110294-b6bcb126fcda?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=cbb9175b4534e81a8a487e20b6a2b9f2&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1531831244964-750f0b40e3b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=dc86c4e21553a4a3914cc3d348cd53b8&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1513793193357-c3f79733816b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89c0f8c69c99409b351a5c1817a1248d&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1508673778687-0b1ffaac41c5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b8b0687a64d0e98089fcd81052f62cdf&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1533264515790-38b563064b68?ixlib=rb-0.3.5&s=8cc95cad522968dd21a19469a7cabc68&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1530510040684-a9503efb09c2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d6fe5b09b9817790408a44c344e6641b&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1529408773869-8a620761744f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ac140e11990d2578596a4b9fddf01ab4&auto=format&fit=crop&w=400&q=60"
]

address = %w[Hoxton Shoreditch Soho Kensington Camden Surrey Hobbiton]
  # "684 The Green, HUDDERSFIELD, HD10 9MC",
  # "7068 Highfield Road, TELFORD, TF84 0WT",
  # "812 Mill Road, STOCKPORT, SK1 7DV",
  # "8319 Chester Road, LIVERPOOL, L57 9KH",
  # "41 Stanley Road, DERBY, DE96 3LC",
  # "7494 New Road, WEST LONDON, W65 2PB",
  # "377 North Street, BOURNEMOUTH, BH53 5AO"


event_names = [
  "Going out with a few friends to have a few drinks",
  "Football match",
  "Trivia game in the nextdoor pub",
  "Chilling out in the beach",
  "Cinema! Going out to see the next romcom",
  "Coding, coding and coding!! Everyday!"
]

event_descriptions = [
  "The next outstanding show is Monday March 23rd at 8pm. The Comedy Cabaret offers a Laffy Raffy Raffle. To enter all you have to do is RSVP/Join this event, and then on the night of show, be present in the flesh and your name will be entered into a draw for free beer! (DISCLAIMER: If you’re not there when we draw your name you forfeit your mouth-watering super-thirst quenching beer. Also must 19 years of age or older to enter).",
  "Fundraising proceeds will directly support Reel Asian’s year-round and festival youth programs that help culturally diverse and newcomer youth from the GTA examine issues of identity and belonging through media arts, while providing leadership opportunities, education and job-skills training in film and creative production.",
  "The massive technology conference Techweek references past attendees and sponsors to illustrate how popular and illustrious the event is. If you don’t have big names to reference you can include testimonials and reviews from past attendees to create the same effect. One study showed that 79 of customers trust online reviews as much as personal recommendations.",
  "Specialist computer software programmes can be intimidating for those unfamiliar with them, but the title of this event works to put the reader instantly at ease.
  An awareness of the emotions readers may be experiencing is shown too in the first line, by identifying their problem and showing sympathy.
  The writer takes pains to reassure the reader, promising it won’t be too hard and writes in a friendly, personal manner. It’s a very low-pressure approach and feels kind of like a mate asking you to hang out for an afternoon.",
  "The best events are interactive ones, where participants are given a chance to really get involved. BarCamp makes it clear that the attendees are the star of this show, clearly explaining the collaborative concept.
  The copy makes potential attendees feel they themselves may have something valuable to offer the event. All too often sales copy is only focused on what a product or service can offer a consumer.
  BarCamp’s copy also includes some fun alliteration and humour to set a bright and breezy tone."
]

messages = [
  "Hey, you seem really cool people, I want to get to know you",
  "I want to hang out with you",
  "Read your group bio, we should definitely meet",
  "Love you guys, can I join?"
]

categories = %w[drinking sports cinema theatre museum outdoors]

puts "USER SEEDED BITCHES"
20.times do |user|
  name = names.sample
  email = "#{name}#{(100...1000).to_a.sample}@gmail.com"
  user = User.new(email: email, name: name, user_bio: bios.sample, user_photo: user_photos.sample, password: "password")
  user.save
  6.times do
    month = %w[08 09 10 11 12].sample
    day = (10..28).to_a.sample
    hour = (10..23).to_a.sample
    min = (10..60).to_a.sample
    date = "2018-#{month}-#{day} #{hour}:#{min}:00"
    event = Event.new(date: date, name: event_names.sample, description: event_descriptions.sample, location: address.sample, category: categories.sample, group_bio: bios.sample, group_photo: group_photos.sample, group_size: (5..10).to_a.sample)
    event.user = user
    event.save
  end
end

User.create(email: "test@test.com", name: "Awesome", user_bio: bios.sample, user_photo: user_photos.sample, password: "password")

puts "REQUEST SEEDED BITCHES"

Event.all.each do |event|
  users = User.all.select { |user| user.id != event.user.id }
  users.sample(2).each do |user|
    request = Request.new(message: messages.sample)
    request.event = event
    request.user = user
    request.save
  end
end

puts "SEEDED BITCHES"


#required fields: email, encrypted_password(str), name, user_bio (>20wd), user_photo(str)
# bio = "Heirloom typewriter snackwave polaroid next level. Humblebrag bicycle rights hella church-key DIY, raclette kinfolk dreamcatcher tumeric. Venmo subway tile kinfolk hoodie sustainable, you probably haven't heard of them."
# user1 = User.create(email: "test@test.com", password: "passWORD", name: "testo", user_bio: bio, user_photo: "photo")
# user2 = User.create(email: "test2@test.com", password: "passWORD", name: "testy", user_bio: bio, user_photo: "photo")
# user3 = User.create(email: "test3@test.com", password: "passWORD", name: "testum", user_bio: bio, user_photo: "photo")
# user4 = User.create(email: "test4@test.com", password: "passWORD", name: "tester", user_bio: bio, user_photo: "photo")
# user5 = User.create(email: "test5@test.com", password: "passWORD", name: "testerer", user_bio: bio, user_photo: "photo")

# puts "USER SEEDED BITCHES"


# puts "preparing event seeds"
# # event seeds

# #required fields: user_id, date(date_time), location, description(>20wd), category, group_size
# event1 = Event.create(name: "event1", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
# event2 = Event.create(name: "event2", user_id: user2.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
# event3 = Event.create(name: "event3", user_id: user3.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "drinking", group_size: 8, group_photo: "photo", group_bio: bio)
# event4 = Event.create(name: "event4", user_id: user4.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "drinking", group_size: 8, group_photo: "photo", group_bio: bio)
# event5 = Event.create(name: "event5", user_id: user5.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
# event6 = Event.create(name: "event6", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
# event7 = Event.create(name: "event7", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)
# event8 = Event.create(name: "event8", user_id: user1.id, date: "2018-08-12 20:30:00", location: "london", description: bio, category: "sports", group_size: 8, group_photo: "photo", group_bio: bio)

# puts "EVENT SEEDED BITCHES"


# puts "preparing request seeds"
# # request seeds

# #required fields: user_id, event_id, status, message,
# Request.create(user_id: user2.id, event_id: event4.id, status: "pending", message: bio)
# Request.create(user_id: user1.id, event_id: event3.id, status: "pending", message: bio)
# Request.create(user_id: user5.id, event_id: event2.id, status: "pending", message: bio)
# Request.create(user_id: user3.id, event_id: event1.id, status: "pending", message: bio)
# Request.create(user_id: user4.id, event_id: event1.id, status: "pending", message: bio)
# Request.create(user_id: user3.id, event_id: event6.id, status: "accepted", message: bio)
# Request.create(user_id: user4.id, event_id: event8.id, status: "rejected", message: bio)
# Request.create(user_id: user3.id, event_id: event8.id, status: "accepted", message: bio)

# puts "REQUEST SEEDED BITCHES"
