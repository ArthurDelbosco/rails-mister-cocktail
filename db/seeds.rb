# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all

lemon    = Ingredient.create!(name: "lemon")
ice      = Ingredient.create!(name: "ice")
mint     = Ingredient.create!(name: "mint leaves")
yukon    = Ingredient.create!(name: "Yukon Jack")
campari  = Ingredient.create!(name: "Campari")
absinthe = Ingredient.create!(name: "Absinthe")
whisky   = Ingredient.create!(name: "Whisky")
jim      = Ingredient.create!(name: "Jim Beam")
sprite   = Ingredient.create!(name: "Sprite")
sambuca  = Ingredient.create!(name: "Sambuca")
pisco    = Ingredient.create!(name: "Pisco")


mojito  = Cocktail.create!(name: "Mojito")
caipi   = Cocktail.create!(name: "Caipi")

ap "add doses in mojito..."
Dose.create!(ingredient: mint, cocktail: mojito, description: "3 feuilles")
Dose.create!(ingredient: ice, cocktail: mojito, description: "2 cubes")
Dose.create!(ingredient: lemon, cocktail: mojito, description: "1 zeste")

ap "add doses in caipi..."
Dose.create!(ingredient: sprite, cocktail: caipi, description: "3 toto")
Dose.create!(ingredient: pisco, cocktail: caipi, description: "2 tata")
