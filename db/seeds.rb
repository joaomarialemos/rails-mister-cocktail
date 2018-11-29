# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# get the url
# save in var
# parse with json
# save in var
# look each key ing
# create model with ing
# end

require 'open-uri'
require 'json'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json = open(url).read
ingredients = JSON.parse(json)
# p ingredients
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient['strIngredient1'])
  p i
end

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
