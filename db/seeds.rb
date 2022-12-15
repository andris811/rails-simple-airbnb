require 'faker'

puts "Cleaning database..."
Flat.destroy_all

20.times do
  Flat.create!(
    name: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.between(from: 50, to: 150),
    number_of_guests: Faker::Number.between(from: 1, to: 4)
  )
end
