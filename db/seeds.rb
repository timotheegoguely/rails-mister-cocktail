require 'open-uri'
require 'json'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)

Ingredient.destroy_all

ingredients["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient.values.join)
end
