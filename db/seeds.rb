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
onion = FoodItem.create(name: "Onion", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/onions.jpg"), filename: "onions.jpg", content_type: "image/jpg" } )
potato = FoodItem.create(name: "Potato", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/potato.jpg"), filename: "potato.jpg", content_type: "image/jpg" } )
tomato = FoodItem.create(name: "Tomato", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/tomato.jpg"), filename: "tomato.jpg", content_type: "image/jpg" } )
cucumber = FoodItem.create(name: "Cucumber", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/cucumber.jpg"), filename: "cucumber.jpg", content_type: "image/jpg" } )
beetroot = FoodItem.create(name: "Beetroot", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/beetroot.jpg"), filename: "beetroot.jpg", content_type: "image/jpg" } )
cauliflower = FoodItem.create(name: "Cauliflower", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/cauliflower.jpg"), filename: "cauliflower.jpg", content_type: "image/jpg" } )
aubergine = FoodItem.create(name: "Aubergine", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/aubergine.jpg"), filename: "aubergine.jpg", content_type: "image/jpg" } )
avocado = FoodItem.create(name: "Avocado", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/avocado.jpg"), filename: "avocado.jpg", content_type: "image/jpg" } )
pepper = FoodItem.create(name: "Pepper", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/peppers.jpg"), filename: "peppers.jpg", content_type: "image/jpg" } )
cabbage = FoodItem.create(name: "Cabbage", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/cabbage.jpg"), filename: "cabbage.jpg", content_type: "image/jpg" } )
pumpkin = FoodItem.create(name: "Pumpkin", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/pumpkin.jpg"), filename: "pumpkin.jpg", content_type: "image/jpg" } )
carrot = FoodItem.create(name: "Carrot", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/carrot.jpg"), filename: "carrot.jpg", content_type: "image/jpg" } )
broccoli = FoodItem.create(name: "Broccoli", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/broccoli.jpg"), filename: "broccoli.jpg", content_type: "image/jpg" } )
kale = FoodItem.create(name: "Kale", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/kale.jpg"), filename: "kale.jpg", content_type: "image/jpg" } )
asparagus = FoodItem.create(name: "Asparagus", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/asparagus.jpg"), filename: "asparagus.jpg", content_type: "image/jpg" } )
spinach = FoodItem.create(name: "Spinach", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/spinach.jpg"), filename: "spinach.jpg", content_type: "image/jpg" } )
mushroom = FoodItem.create(name: "Mushroom", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/mushrooms.jpg"), filename: "mushrooms.jpg", content_type: "image/jpg" } )
garlic = FoodItem.create(name: "Garlic", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/garlic.jpg"), filename: "garlic.jpg", content_type: "image/jpg" } )
squash = FoodItem.create(name: "Squash", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/squash.jpg"), filename: "sqash.jpg", content_type: "image/jpg" } )
zucchini = FoodItem.create(name: "Zucchini", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/zucchini.jpg"), filename: "zucchini.jpg", content_type: "image/jpg" } )
corn = FoodItem.create(name: "Corn", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/corn.jpg"), filename: "corn.jpg", content_type: "image/jpg" } )
raddish = FoodItem.create(name: "Raddish", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/raddish.jpg"), filename: "raddish.jpg", content_type: "image/jpg" } )
celery = FoodItem.create(name: "Celery", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/celery.jpg"), filename: "celery.jpg", content_type: "image/jpg" } )
leek = FoodItem.create(name: "Leek", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/leek.jpg"), filename: "leek.jpg", content_type: "image/jpg" } )
capers = FoodItem.create(name: "Capers", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/capers.jpg"), filename: "capers.jpg", content_type: "image/jpg" } )
olives = FoodItem.create(name: "Olives", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/olives.jpg"), filename: "olives.jpg", content_type: "image/jpg" } )
parsley = FoodItem.create(name: "Parsley", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/parsley.jpg"), filename: "parsley.jpg", content_type: "image/jpg" } )
coriander = FoodItem.create(name: "Coriander", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/veggies/coriander.jpg"), filename: "coriander.jpg", content_type: "image/jpg" } )

# CARBS:
rice = FoodItem.create(name: "Rice", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/rice.jpg"), filename: "rice.jpg", content_type: "image/jpg" })
pasta = FoodItem.create(name: "Pasta", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/pasta.jpg"), filename: "pasta.jpg", content_type: "image/jpg" })
quinoa = FoodItem.create(name: "Quinoa", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/quinoa.jpg"), filename: "quinoa.jpg", content_type: "image/jpg" })
couscous = FoodItem.create(name: "Couscous", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/couscous.jpg"), filename: "couscous.jpg", content_type: "image/jpg" })
barley = FoodItem.create(name: "Barley", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/barley.jpg"), filename: "barley.jpg", content_type: "image/jpg" })
oats = FoodItem.create(name: "Oats", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/oats.jpg"), filename: "oats.jpg", content_type: "image/jpg" })
cornmeal = FoodItem.create(name: "Cornmeal", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/cornmeal.jpg"), filename: "cornmeal.jpg", content_type: "image/jpg" })
buckwheat = FoodItem.create(name: "Buckwheat", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/buckwheat.jpg"), filename: "buckwheat.jpg", content_type: "image/jpg" })
millet = FoodItem.create(name: "Millet", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/millet.jpg"), filename: "millet.jpg", content_type: "image/jpg" })
polenta = FoodItem.create(name: "Polenta", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/polenta.jpg"), filename: "polenta.jpg", content_type: "image/jpg" })
tapioca = FoodItem.create(name: "Tapioca", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/tapioca.jpg"), filename: "tapioca.jpg", content_type: "image/jpg" })
semolina = FoodItem.create(name: "Semolina", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/semolina.jpg"), filename: "semolina.jpg", content_type: "image/jpg" })
plantain = FoodItem.create(name: "Plantain", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/plantain.jpg"), filename: "plantain.jpg", content_type: "image/jpg" })
cassava = FoodItem.create(name: "Cassava", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/cassava.jpg"), filename: "cassava.jpg", content_type: "image/jpg" })
yam = FoodItem.create(name: "Yam", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/yam.jpg"), filename: "yam.jpg", content_type: "image/jpg" })
bread = FoodItem.create(name: "Bread", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/carbs/bread.jpg"), filename: "bread.jpg", content_type: "image/jpg" })

# SPICES:
cumin = FoodItem.create(name: "Cumin", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/cumin.jpg"), filename: "cumin.jpg", content_type: "image/jpg" })
turmeric = FoodItem.create(name: "Turmeric", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/turmeric.jpg"), filename: "turmeric.jpg", content_type: "image/jpg" })
cinnamon = FoodItem.create(name: "Cinnamon", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/cinnamon.jpg"), filename: "cinnamon.jpg", content_type: "image/jpg" })
paprika = FoodItem.create(name: "Paprika", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/paprika.jpg"), filename: "paprika.jpg", content_type: "image/jpg" })
coriander = FoodItem.create(name: "Coriander", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/veggies/coriander.jpg"), filename: "coriander.jpg", content_type: "image/jpg" })
cayenne = FoodItem.create(name: "Cayenne", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/cayenne.jpg"), filename: "cayenne.jpg", content_type: "image/jpg" })
ginger = FoodItem.create(name: "Ginger", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/ginger.jpg"), filename: "ginger.jpg", content_type: "image/jpg" })
nutmeg = FoodItem.create(name: "Nutmeg", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/nutmeg.jpg"), filename: "nutmeg.jpg", content_type: "image/jpg" })
cardamom = FoodItem.create(name: "Cardamom", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/cardamom.jpg"), filename: "cardamom.jpg", content_type: "image/jpg" })
cloves = FoodItem.create(name: "Cloves", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/cloves.jpg"), filename: "cloves.jpg", content_type: "image/jpg" })
oregano = FoodItem.create(name: "Oregano", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/oregano.jpg"), filename: "oregano.jpg", content_type: "image/jpg" })
thyme = FoodItem.create(name: "Thyme", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/thyme.jpg"), filename: "thyme.jpg", content_type: "image/jpg" })
rosemary = FoodItem.create(name: "Rosemary", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/rosemary.jpg"), filename: "rosemary.jpg", content_type: "image/jpg" })
basil = FoodItem.create(name: "Basil", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/basil.jpg"), filename: "basil.jpg", content_type: "image/jpg" })
parsley = FoodItem.create(name: "Parsley", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/veggies/parsley.jpg"), filename: "parsley.jpg", content_type: "image/jpg" })
chili_powder = FoodItem.create(name: "Chili Powder", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/cumin.jpg"), filename: "cumin.jpg", content_type: "image/jpg" })
curry_powder = FoodItem.create(name: "Curry Powder", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/currypowder.jpg"), filename: "cumin.jpg", content_type: "image/jpg" })
mustard_seeds = FoodItem.create(name: "Mustard Seeds", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/mustardseed.jpg"), filename: "mustardseed.jpg", content_type: "image/jpg" })
fennel_seeds = FoodItem.create(name: "Fennel Seeds", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/fennelseed.jpg"), filename: "fennelseed.jpg", content_type: "image/jpg" })
caraway_seeds = FoodItem.create(name: "Caraway Seeds", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/spices/carawayseed.jpg"), filename: "carawayseed.jpg", content_type: "image/jpg" })

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

recipethree = Recipe.create(
  name: "Tomato & Basil Soup",
  duration: 10,
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

RecipeFoodItem.create(food_item_id: tomato.id, recipe_id: recipethree.id)
RecipeFoodItem.create(food_item_id: basil.id, recipe_id: recipethree.id)
RecipeFoodItem.create(food_item_id: cayenne.id, recipe_id: recipethree.id)

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
