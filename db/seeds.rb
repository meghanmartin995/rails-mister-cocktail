# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_serialized = open(url).read
drinks = JSON.parse(drinks_serialized)

drinks = drinks['drinks']

drinks.each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

Cocktail.create(name: "N23")
Cocktail.create(name: "Baltimore Bang")
Cocktail.create(name: "Jalisco High Tea")
Cocktail.create(name: "Beatnik")
Cocktail.create(name: "Lei Maker")
Cocktail.create(name: "Flaming Dr. Pepper")
Cocktail.create(name: "Cafe Amore")
Cocktail.create(name: "Bed of Roses")
Cocktail.create(name: "French Pearl")
Cocktail.create(name: "Burning Brogue")
Cocktail.create(name: "Presbyterian")
Cocktail.create(name: "Brazilian Bull")
Cocktail.create(name: "Blushing Geisha")
Cocktail.create(name: "Apocolypse Now")
Cocktail.create(name: "Bocce Ball")
Cocktail.create(name: "Black Velvet")
Cocktail.create(name: "Christmas Jones")
Cocktail.create(name: "Danny Ocean")
Cocktail.create(name: "Dracula's Kiss")
Cocktail.create(name: "Old Fashion")
Cocktail.create(name: "Besame")
Cocktail.create(name: "Envy")
