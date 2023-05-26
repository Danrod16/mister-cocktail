# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "destroying data"
Cocktail.destroy_all
Ingredient.destroy_all # No Ingredients

puts "Creating cocktails"
10.times do 
   cocktail = Cocktail.create!(name: Faker::Beer.brand, rating: Cocktail::RATING.sample )
   puts "Created #{cocktail.name}, Yeah!"
    5.times do
        ingredient = Ingredient.create!(name: Faker::Food.allergen, weight: (1..300).to_a.sample, cocktail: cocktail )
        puts "Created #{ingredient.name}, Yeah!"
    end
end

puts "#{Ingredient.count} created"
