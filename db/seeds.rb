# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating database..."
10.times do
  flat = Flat.new(
    name: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(20..150),
    number_of_guests: rand(1..15)
  )

  flat.save
  puts flat.name
end
puts 'Seed Done'
