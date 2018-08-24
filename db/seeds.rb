puts "Cleansing the requests"
Request.destroy_all
puts "Cleansing the events"
Event.destroy_all
puts "Cleansing the users"
User.destroy_all

puts "Preparing new seeds"
# user seeds


names = %w[Mark John Jane Mary Joe Bob Jose Ramon Carlos Clement Roan Maria Freddie]
bios = [
  "On a scale of 1 to 10, I am an 11",
  "I have never let my schooling interfere with my education.",
  "Out of my mind. Back in five minutes.",
  "REHAB is for quitters!",
  "Where the hell am I and how did I get here? ",
  "Shoot for the moon. Even if you miss, you’ll land among the stars.",
  "When I was nine years old, I fell in love with baseball and dreamed of playing first base.",
  "When human beings experience trauma or severe life stressors, it is not uncommon for their lives to unravel. Things aren't great.",
  "I am the founder of JUST Creative which is my design studio and graphic design blog.",
  "Heirloom typewriter snackwave polaroid next level. Humblebrag bicycle rights hella church-key DIY, raclette kinfolk dreamcatcher tumeric. Venmo subway tile kinfolk hoodie sustainable, you probably haven't heard of them."
]

group_bios = [  "We're a group of friends from school, kept in touch for the last 15 years and still finding time to hang out! We're pretty chilled out, except Dave who's a KNOB",
  "We are a group of friends held together by a secret from our past. We love board games and accidentally killing fishermen when it's raining and you can hardly even see the road.",
  "We all work together at Le Wagon. We love computers. We love kitt. We love our overlords Boris and Seb. We love Ed. We love Slack. We love Jess's dog. We don't love poor lecture attendance.",
  "We all work at Makers Academy. We're worthless scumbags and nobody likes us and we don't use deodorant and we live with our parents and like charging £8000 for things.",
  "We're girls. Hee Hee Hee! We like girl things like LIPSTICK and CATS and RYAN GOSLING and SUNSETS and LUNAR CYCLES.",
  "We all work at Makers Academy. We're worthless scumbags and nobody likes us and we don't use deodorant and we live with our parents and like charging £8000 for things."
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

address = ["Hoxton, London", "Shoreditch, London", "Soho, London", "Kensington, London", "Camden, London", "Hammersmith, UK"]

  # "684 The Green, HUDDERSFIELD, HD10 9MC",
  # "7068 Highfield Road, TELFORD, TF84 0WT",
  # "812 Mill Road, STOCKPORT, SK1 7DV",
  # "8319 Chester Road, LIVERPOOL, L57 9KH",
  # "41 Stanley Road, DERBY, DE96 3LC",
  # "7494 New Road, WEST LONDON, W65 2PB",
  # "377 North Street, BOURNEMOUTH, BH53 5AO"


event_names = [
  "Going out with a few friends for some drinks",
  "Football match",
  "Pub quiz down the local",
  "Chilling out in the beach",
  "Cinema! Going out to see the next romcom",
  "Coding, coding and coding!! Everyday!"
]

event_prices = [ 0, 50, 5, 0, 8, 0 ]

event_descriptions = [
  "My friends and I are going to head to the pub and drink until the police come. Fancy it?",
  "LADS football LADS LADS LADS LADS LADS ref's a wanker LADS LADS LADS. Got a spare ticket - come join us!",
  "Testing our knowledge down at my local pub with some friends - need someone who knows about movies!",
  "Let's get sandy. Bit of paddling, bit of surfing, maybe a few beers",
  "Ryan Gosling's new film is out and I am READY. I want to touch him. I want to smell him. :)",
  "I thought maybe we could turn everybody's screens red and maybe spin them round a bit.."
  ]

messages = [
  "Hey, you seem really cool people, I want to get to know you",
  "I want to hang out with you",
  "Read your group bio, we should definitely meet",
  "Love you guys, can I join?"
]

categories = %w[Drinking Sports Games Outdoors Cinema Online]

20.times do |user|
  name = names.sample
  email = "#{name}#{(100...1000).to_a.sample}@gmail.com"
  user = User.new(email: email, name: name, user_bio: bios.sample, remote_user_photo_url: user_photos.sample, password: "password", remote_group_photo_url: group_photos.sample, group_bio: group_bios.sample)

  user.save
  1.times do
    month = "08"
    day = (25..31).to_a.sample
    hour = (10..20).to_a.sample
    min = [00, 30].sample
    date = "2018-#{month}-#{day} #{hour}:#{min}:00"
    random_index = (0..5).to_a.sample
    event = Event.new(date: date, name: event_names[random_index], description: event_descriptions[random_index], location: address.sample, category: categories[random_index], group_bio: group_bios[random_index], remote_group_photo_url: group_photos[random_index], group_size: (5..10).to_a.sample, price: event_prices[random_index])
    event.user = user
    event.save
  end
end
puts "USERS SEEDED!"
puts "REQUESTS SEEDED!"

User.create(email: "test@test.com", name: "Awesome", user_bio: bios.sample, remote_user_photo_url: group_photos.sample, password: "password", remote_group_photo_url: group_photos.sample, group_bio: group_bios.sample)

Event.all.each do |event|
  users = User.all.select { |user| user.id != event.user.id }
  users.sample(2).each do |user|
    request = Request.new(message: messages.sample)
    request.event = event
    request.user = user
    request.save
  end
end

puts "EVENTS SEEDED!"
puts "#{User.count} users created, #{Event.count} events created, #{Request.count} requests created. "
puts "Seeding complete"
