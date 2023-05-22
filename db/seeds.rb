# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning Database 🧹"
FoodCategory.destroy_all
FoodItem.destroy_all

puts "Creating Categories"
vegetables = FoodCategory.create(name: "Vegetables")
fruits = FoodCategory.create(name: "Fruits")
dairy = FoodCategory.create(name: "Dairy")
meat = FoodCategory.create(name: "Meat")
poultry = FoodCategory.create(name: "Poultry")
seafood = FoodCategory.create(name: "Seadood")
carbs = FoodCategory.create(name: "Carbs")
spices = FoodCategory.create(name: "Spices")
legumes = FoodCategory.create(name: "Legumes")

puts "Creating Food Items 🥑"
onion = FoodItem.create(name: "Onion", food_category_id: vegetables.id)
potato = FoodItem.create(name: "Potato", food_category_id: vegetables.id)
tomato = FoodItem.create(name: "Tomato", food_category_id: vegetables.id)
cucumber = FoodItem.create(name: "Cucumber", food_category_id: vegetables.id)
beetroot = FoodItem.create(name: "Beetroot", food_category_id: vegetables.id)
cauliflower = FoodItem.create(name: "Cauliflower", food_category_id: vegetables.id)
aubergine = FoodItem.create(name: "Aubergine", food_category_id: vegetables.id)
avocado = FoodItem.create(name: "Avocado", food_category_id: vegetables.id)
pepper = FoodItem.create(name: "Pepper", food_category_id: vegetables.id)
cabbage = FoodItem.create(name: "Cabbage", food_category_id: vegetables.id)
pumpkin = FoodItem.create(name: "Pumpkin", food_category_id: vegetables.id)
carrot = FoodItem.create(name: "Carrot", food_category_id: vegetables.id)
broccoli = FoodItem.create(name: "Broccoli", food_category_id: vegetables.id)
kale = FoodItem.create(name: "Kale", food_category_id: vegetables.id)
asparagus = FoodItem.create(name: "Asparagus", food_category_id: vegetables.id)
spinach = FoodItem.create(name: "Spinach", food_category_id: vegetables.id)
mushroom = FoodItem.create(name: "Mushroom", food_category_id: vegetables.id)
garlic = FoodItem.create(name: "Garlic", food_category_id: vegetables.id)
squash = FoodItem.create(name: "Squash", food_category_id: vegetables.id)
zucchini = FoodItem.create(name: "Zucchini", food_category_id: vegetables.id)
corn = FoodItem.create(name: "Corn", food_category_id: vegetables.id)
raddish = FoodItem.create(name: "Raddish", food_category_id: vegetables.id)
celery = FoodItem.create(name: "Celery", food_category_id: vegetables.id)
leek = FoodItem.create(name: "Leek", food_category_id: vegetables.id)

puts "We have a DB ✅ with #{FoodCategory.count} categories, #{FoodItem.count} food items"
