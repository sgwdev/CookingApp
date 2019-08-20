# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredients = Ingredient.create([{ name: 'Chocolate'}, { name: 'Sugar'}, { name: 'Salt'}, { name: 'Milk'}, { name: 'Flour'}, { name: 'Egg' }, { name: 'Cinnamon'}, { name: 'Butter'}])
unites = Unit.create([{ name: 'Gram', symbol: 'g' }, { name: 'Milliliter', symbol: 'ml' }])