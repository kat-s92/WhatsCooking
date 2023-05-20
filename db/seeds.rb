# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

vegetables = FoodCategory.create(name: "Vegetables")
fruits = FoodCategory.create(name: "Fruits")
dairy = FoodCategory.create(name: "Dairy")
meat = FoodCategory.create(name: "Meat")
poultry = FoodCategory.create(name: "Poultry")
seafood = FoodCategory.create(name: "Seadood")
carbs = FoodCategory.create(name: "Carbs")
spices = FoodCategory.create(name: "Spices")
vegan = FoodCategory.create(name: "Vegan")

onion = FoodItem.create(name: "Onion", food_category_id: vegetables.id)
