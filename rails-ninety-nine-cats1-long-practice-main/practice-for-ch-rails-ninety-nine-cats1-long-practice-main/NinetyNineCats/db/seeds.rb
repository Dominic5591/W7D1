# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Cat.destroy_all 

Fluffy = Cat.create!(name: "Fluffers", color: "White", birth_date: '2023/11/22', sex: "M", description: 'This is a cat.')
Jeremy = Cat.create!(name: "Jer", color: "Black", birth_date: '2023/11/12', sex: "F", description: 'This is a different cat.')
Billy = Cat.create!(name: "Bilbo", color: "Orange", birth_date: '2023/11/10', sex: "M", description: 'This is another cat.')
Dominic = Cat.create!(name: "Dominic", color: "Grey", birth_date: '2023/11/14', sex: "M", description: 'This is a 4th cat.')
