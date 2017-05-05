# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'
CATEGORIES = %w(chinese viet italian spanish french)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0610112209",
    category:     "italian",
    stars:        3
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:  "0615061635",
    category:     "viet",
    stars:        4
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0450231156",
    category:     "chinese",
    stars:        2
  }
]

puts 'Creating 20 fake restaurants à l\'ancienne...'
20.times do
  restaurants_attributes << {
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::Number.number(10),
    category: CATEGORIES.sample,
    stars: [1, 2, 3].sample
  }
end

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
puts "Creating #{restaurants_attributes.count} fake restaurants at end..."
