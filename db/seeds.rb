# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
30.times do 
  Character.create!(name: Faker::Movies::HarryPotter.character,
                  location: Faker::Movies::HarryPotter.location,
                  quote: Faker::Movies::HarryPotter.quote,
                  book: Faker::Movies::HarryPotter.book,
                  house: Faker::Movies::HarryPotter.house,
                  spell: Faker::Movies::HarryPotter.spell
                  )
end

puts "Seed finished"
puts "#{Character.count} chars created"
