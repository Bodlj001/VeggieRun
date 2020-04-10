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
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)


Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
sleep(3)

Restaurant.create({
  photo: "https://picsum.photos/200/300",
  name: Faker::Restaurant.name,
  address: Faker::Address.street_address,
  cuisine: Faker::Restaurant.type,
  bio: Faker::Restaurant.description,
  vegan: ['veggie', 'vegan'].sample
})

puts "created restaurant called #{Restaurant.last.name}"
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
