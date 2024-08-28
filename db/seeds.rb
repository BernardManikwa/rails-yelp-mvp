# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Kumusha = {name: "Kumusha", address: "7 Boundary St, Milnerton", category:"italian"}
KwaTerry =  {name: "KwaTerry", address: "2 caleb st woodstock", category:"japanese"}
Yard =  {name: "Yard", address: "2 loop st cape town", category:"belgian"}
Eiffels =  {name: "Eiffels", address: "2 castle st tableview", category:"french"}
Blowfish =  {name: "Blowfish", address: "2 waterfront drive V & A", category:"chinese"}

[Kumusha, KwaTerry, Yard, Eiffels] .each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
