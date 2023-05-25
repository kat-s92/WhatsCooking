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
dairyandcheese = FoodCategory.create(name: "Dairy & Cheese")
meat = FoodCategory.create(name: "Meat")
poultry = FoodCategory.create(name: "Poultry")
seafood = FoodCategory.create(name: "Seadood")
carbs = FoodCategory.create(name: "Carbs")
spices = FoodCategory.create(name: "Spices")
legumes = FoodCategory.create(name: "Legumes")

puts "Creating Food Items 🥑"
# VEG:
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
capers = FoodItem.create(name: "Capers", food_category_id: vegetables.id)
olives = FoodItem.create(name: "Olives", food_category_id: vegetables.id)
parsley = FoodItem.create(name: "Parsley", food_category_id: vegetables.id)
corriander = FoodItem.create(name: "Corriander", food_category_id: vegetables.id)

# CARBS:
rice = FoodItem.create(name: "Rice", food_category_id: carbs.id)
pasta = FoodItem.create(name: "Pasta", food_category_id: carbs.id)
quinoa = FoodItem.create(name: "Quinoa", food_category_id: carbs.id)
couscous = FoodItem.create(name: "Couscous", food_category_id: carbs.id)
barley = FoodItem.create(name: "Barley", food_category_id: carbs.id)
oats = FoodItem.create(name: "Oats", food_category_id: carbs.id)
cornmeal = FoodItem.create(name: "Cornmeal", food_category_id: carbs.id)
buckwheat = FoodItem.create(name: "Buckwheat", food_category_id: carbs.id)
millet = FoodItem.create(name: "Millet", food_category_id: carbs.id)
polenta = FoodItem.create(name: "Polenta", food_category_id: carbs.id)
tapioca = FoodItem.create(name: "Tapioca", food_category_id: carbs.id)
semolina = FoodItem.create(name: "Semolina", food_category_id: carbs.id)
plantain = FoodItem.create(name: "Plantain", food_category_id: carbs.id)
cassava = FoodItem.create(name: "Cassava", food_category_id: carbs.id)
yam = FoodItem.create(name: "Yam", food_category_id: carbs.id)
bread = FoodItem.create(name: "Bread", food_category_id: carbs.id)

# SPICES:
cumin = FoodItem.create(name: "Cumin", food_category_id: spices.id)
turmeric = FoodItem.create(name: "Turmeric", food_category_id: spices.id)
cinnamon = FoodItem.create(name: "Cinnamon", food_category_id: spices.id)
paprika = FoodItem.create(name: "Paprika", food_category_id: spices.id)
coriander = FoodItem.create(name: "Coriander", food_category_id: spices.id)
cayenne = FoodItem.create(name: "Cayenne", food_category_id: spices.id)
ginger = FoodItem.create(name: "Ginger", food_category_id: spices.id)
nutmeg = FoodItem.create(name: "Nutmeg", food_category_id: spices.id)
cardamom = FoodItem.create(name: "Cardamom", food_category_id: spices.id)
cloves = FoodItem.create(name: "Cloves", food_category_id: spices.id)
oregano = FoodItem.create(name: "Oregano", food_category_id: spices.id)
thyme = FoodItem.create(name: "Thyme", food_category_id: spices.id)
rosemary = FoodItem.create(name: "Rosemary", food_category_id: spices.id)
basil = FoodItem.create(name: "Basil", food_category_id: spices.id)
parsley = FoodItem.create(name: "Parsley", food_category_id: spices.id)
chili_powder = FoodItem.create(name: "Chili Powder", food_category_id: spices.id)
curry_powder = FoodItem.create(name: "Curry Powder", food_category_id: spices.id)
mustard_seeds = FoodItem.create(name: "Mustard Seeds", food_category_id: spices.id)
fennel_seeds = FoodItem.create(name: "Fennel Seeds", food_category_id: spices.id)
celery_seeds = FoodItem.create(name: "Celery Seeds", food_category_id: spices.id)
caraway_seeds = FoodItem.create(name: "Caraway Seeds", food_category_id: spices.id)

# DAIRY AND CHEESE:
milk = FoodItem.create(name: "Milk", food_category_id: dairyandcheese.id)
yogurt = FoodItem.create(name: "Yogurt", food_category_id: dairyandcheese.id)
cream_cheese = FoodItem.create(name: "Cream Cheese", food_category_id: dairyandcheese.id)
cheddar = FoodItem.create(name: "Cheddar", food_category_id: dairyandcheese.id)
butter = FoodItem.create(name: "Butter", food_category_id: dairyandcheese.id)
cottage_cheese = FoodItem.create(name: "Cottage Cheese", food_category_id: dairyandcheese.id)
sour_cream = FoodItem.create(name: "Sour Cream", food_category_id: dairyandcheese.id)
mozzarella = FoodItem.create(name: "Mozzarella", food_category_id: dairyandcheese.id)
parmesan = FoodItem.create(name: "Parmesan", food_category_id: dairyandcheese.id)
halloumi = FoodItem.create(name: "Halloumi", food_category_id: dairyandcheese.id)
pecorino = FoodItem.create(name: "Pecorino", food_category_id: dairyandcheese.id)
manchego = FoodItem.create(name: "Manchego", food_category_id: dairyandcheese.id)
feta = FoodItem.create(name: "Feta", food_category_id: dairyandcheese.id)
ricotta = FoodItem.create(name: "Ricotta", food_category_id: dairyandcheese.id)
gouda = FoodItem.create(name: "Gouda", food_category_id: dairyandcheese.id)
brie = FoodItem.create(name: "Brie", food_category_id: dairyandcheese.id)
blue_cheese = FoodItem.create(name: "Blue Cheese", food_category_id: dairyandcheese.id)
swiss = FoodItem.create(name: "Swiss", food_category_id: dairyandcheese.id)
goat_cheese = FoodItem.create(name: "Goat Cheese", food_category_id: dairyandcheese.id)
asiago = FoodItem.create(name: "Asiago", food_category_id: dairyandcheese.id)
gorgonzola = FoodItem.create(name: "Gorgonzola", food_category_id: dairyandcheese.id)
provolone = FoodItem.create(name: "Provolone", food_category_id: dairyandcheese.id)
monterey_jack = FoodItem.create(name: "Monterey Jack", food_category_id: dairyandcheese.id)
blue_cheese = FoodItem.create(name: "Blue Cheese", food_category_id: dairyandcheese.id)
camembert = FoodItem.create(name: "Camembert", food_category_id: dairyandcheese.id)
gruyere = FoodItem.create(name: "Gruyère", food_category_id: dairyandcheese.id)
emmental = FoodItem.create(name: "Emmental", food_category_id: dairyandcheese.id)
edam = FoodItem.create(name: "Edam", food_category_id: dairyandcheese.id)
muenster = FoodItem.create(name: "Muenster", food_category_id: dairyandcheese.id)

puts "Creating Chefs 🥑"

# CHEFS:
10.times do
  chef = Chef.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

# RECIPE NO.1:
# recipeone = Recipe.new do |r|
#   r.ingredients = ['3 Aubergines', '100g Tomato', '3tbp Tomato Paste', '1 Onion', '1tsp Paprika', '6 Garlic Cloves', '180g Pasta', 'Lemon Juice']
#   r.name = "Smokey aubergine pasta"
#   r.duration = 45
#   r.chef_id = Chef.pluck(:id)
#   # OR Chefs.sample
# end
# recipeone.save

puts "Creating recipe 🥑"

recipeone = Recipe.create(
  name: "Smokey aubergine pasta",
  duration: 45,
  chef_id: rand(1..10),
  portion_size: 1
)

recipetwo = Recipe.create(
  name: "Avocado Toast",
  duration: 25,
  chef_id: rand(1..10),
  portion_size: 1
)

RecipeFoodItem.create(food_item_id: aubergine.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: tomato.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: onion.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: paprika.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: garlic.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: pasta.id, recipe_id: recipeone.id)

RecipeFoodItem.create(food_item_id: avocado.id, recipe_id: recipetwo.id)
RecipeFoodItem.create(food_item_id: goat_cheese.id, recipe_id: recipetwo.id)
RecipeFoodItem.create(food_item_id: bread.id, recipe_id: recipetwo.id)

puts "Creating Recipe food items 🥑"

  # OR Chefs.sample
# COOKING STEPS FOR RECIPE1 ^^
# STEP1
# recipeonestepone = RecipeStep.new do |s|
#   s.number = 1
#   s.description = 'Preheat the oven to 220°C fan. Chop up one of your aubergines into cubes and roast for 30 minutes,
#   stirring halfway through, until deeply browned and softened.'
#   s.duration = 30
#   s.recipe_id = recipeone.id
# end
# recipeonestepone.save

puts "Creating recipe steps 🥑"

recipeonestepone = RecipeStep.create(
  number: 1,
  description: 'Preheat the oven to 220°C fan. Chop up one of your aubergines into cubes and roast for 30 minutes,
  stirring halfway through, until deeply browned and softened.',
  duration: 30,
  recipe_id: recipeone.id
)

# STEP2
recipeonesteptwo = RecipeStep.new do |s|
  s.number = 2
  s.description = 'Grill the rest of your veg on a hot, smoking griddle pan. Firstly, prick the whole aubergines
   with a fork, put them on the pan and cook til charred all over. Set aside to cool slightly. Once cooled, peel the aubergines.
   Toss the onion and tomatoes together in a bowl with a tablespoon of oil and grill in the same pan for 10 minutes.
   Combine all veg together.'
  s.duration = 30
  s.recipe_id = recipeone.id
end
recipeonesteptwo.save

# STEP3
recipeonestepthree = RecipeStep.new do |s|
  s.number = 3
  s.description = 'Put the tomato paste, paprika, three-quarters of the garlic and 4 tablespoons of oil into a small
  saucepan on a medium heat and cook, stirring occasionally, until the garlic is fragrant and the tomato paste has
  turned dark red, about 5 minutes. Add to the vegentable mixture along with salt and pepper to taste and blitz in food
  processor, if you have one. This is your sauce base.'
  s.duration = 7
  s.recipe_id = recipeone.id
end
recipeonestepthree.save

# STEP4:
recipeonestepfour = RecipeStep.new do |s|
  s.number = 4
  s.description = 'Cook the pasta in plenty of salted boiling water for 8 minutes, or until al dente. Reserve 275ml
  of the pasta water, then drain the pasta well.'
  s.duration = 8
  s.recipe_id = recipeone.id
end
recipeonestepfour.save

# STEP5:
recipeonestepfive = RecipeStep.new do |s|
  s.number = 5
  s.description = 'Add the reserved pasta water and half the roasted aubergine to the sauce base and heat
  through on a medium-high heat. Add the drained pasta and stir to warm through, about 2 minutes.
  Add lemon juice to taste. Enjoy your meal!'
  s.duration = 2
  s.recipe_id = recipeone.id
end
recipeonestepfive.save

puts "We have a DB ✅ with #{FoodCategory.count} categories, #{FoodItem.count} food items, #{RecipeFoodItem.count} food recipe items, #{Chef.count}👨🏻‍🍳 chefs, #{Recipe.count} recipes"
