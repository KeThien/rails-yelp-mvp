puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating restaurants...'

restaurant_category = %w(chinese italian japanese french belgian)

10.times do |restaurant|
  Restaurant.create(
    name: Faker::Food.measurement,
    address: Faker::Address.street_address,
    category: restaurant_category.sample,
    phone_number: Faker::PhoneNumber.phone_number
    )
end
puts 'Finished!'
