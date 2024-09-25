# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "060760876987", rating: 5}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "060760876787", rating: 4}
tattu = {name: "Tattu", address: "Soho, London E2 7JE", phone_number: "060744476987", rating: 3}
petersham_nurseries =  {name: "Petersham Nurseries", address: "Petersham, Richmond", phone_number: "099460876787", rating: 4}
nomad = {name: "NOmad Hotel", address: "Covent Garden, London E2 7JE", phone_number: "060997876987", rating: 5}


[dishoom, pizza_east, tattu, petersham_nurseries, nomad].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
