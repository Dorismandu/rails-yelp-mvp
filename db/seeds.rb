require 'faker'

puts "cleaning Restaurant DB"
Restaurant.destroy_all
puts "Restaurant DB cleaned!"
5.times do 
  my_restaurant = Restaurant.new(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample, 
  )
  my_restaurant.save
end

