# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Removing all restaurants"
Restaurant.all.delete('')
puts "creating all restaurants"

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1547496502-affa22d38842?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

puts "populating Menu"

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end


Restaurant.create({
  photo: "https://images.unsplash.com/photo-1565494490966-4b5088bcd0ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})



puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1584283367830-626868ac1dd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1521845455419-eac340fdbbed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1568475064736-29d7fbd49c39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1528696353932-be229661fd48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1585672840563-f2af2ced55c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})


puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1583197576670-6c6f352877a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1544510807-d0289d40b17c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1524859880053-f595797051c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1508900138639-8d3ff3f49d78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1530990457142-bb18a441c52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1544510806-07b18f692386?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1554998171-89445e31c52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end

Restaurant.create({
  photo: "https://images.unsplash.com/photo-1520066391310-428f06ebd602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"

20.times do
  MenuItem.create({
    dish_name: Faker::Food.dish,
    description: Faker::Food.description,
    price: (5...30).to_a.sample,
    mealtype: ["S", "M", "D"].sample,
    restaurant_id: Restaurant.last.id

  })
  sleep(0.1)
  puts "#{MenuItem.last.dish_name} added to #{Restaurant.last.name}"
end
puts "created all restaurant seed"

sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."
sleep(0.1)
puts "."

puts "checking geolocation"

sleep(0.1)

Restaurant.all.each do |restaurant|
  puts "#{restaurant.address}"
end

puts "creating options"

MenuItem.all.each do |item|
  3.times do
    Option.create({
      description: Faker::Food.ingredient,
      price: [0, 1, 2, 3].sample,
      menu_item_id: item.id
    })
    puts "."
  end
end



 # t.string "name"
 #    t.text "bio"
 #    t.string "address"
 #    t.float "latitude", default: 0.0
 #    t.float "longitude", default: 0.0
 #    t.string "cuisine"
 #    t.integer "rating"
 #    t.boolean "vegan", default: false
 #    t.datetime "created_at", precision: 6, null: false
 #    t.datetime "updated_at", precision: 6, null: false
