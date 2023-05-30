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
onion = FoodItem.create(name: "Onion", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/onion.jpg"), filename: "onion.jpg", content_type: "image/jpg" } )
potato = FoodItem.create(name: "Potato", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/potato.jpg"), filename: "potato.jpg", content_type: "image/jpg" } )
tomato = FoodItem.create(name: "Tomato", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/tomato.jpg"), filename: "tomato.jpg", content_type: "image/jpg" } )
cucumber = FoodItem.create(name: "Cucumber", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/cucumber.jpg"), filename: "cucumber.jpg", content_type: "image/jpg" } )
beetroot = FoodItem.create(name: "Beetroot", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/beetroot.jpg"), filename: "beetroot.jpg", content_type: "image/jpg" } )
cauliflower = FoodItem.create(name: "Cauliflower", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/cauliflower.jpg"), filename: "cauliflower.jpg", content_type: "image/jpg" } )
aubergine = FoodItem.create(name: "Aubergine", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/aubergine.jpg"), filename: "aubergine.jpg", content_type: "image/jpg" } )
avocado = FoodItem.create(name: "Avocado", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/avocado.jpg"), filename: "avocado.jpg", content_type: "image/jpg" } )
pepper = FoodItem.create(name: "Pepper", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/pepper.jpg"), filename: "pepper.jpg", content_type: "image/jpg" } )
cabbage = FoodItem.create(name: "Cabbage", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/cabbage.jpg"), filename: "cabbage.jpg", content_type: "image/jpg" } )
pumpkin = FoodItem.create(name: "Pumpkin", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/pumpkin.jpg"), filename: "pumpkin.jpg", content_type: "image/jpg" } )
carrot = FoodItem.create(name: "Carrot", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/carrot.jpg"), filename: "carrot.jpg", content_type: "image/jpg" } )
broccoli = FoodItem.create(name: "Broccoli", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/broccoli.jpg"), filename: "broccoli.jpg", content_type: "image/jpg" } )
kale = FoodItem.create(name: "Kale", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/kale.jpg"), filename: "kale.jpg", content_type: "image/jpg" } )
asparagus = FoodItem.create(name: "Asparagus", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/asparagus.jpg"), filename: "asparagus.jpg", content_type: "image/jpg" } )
spinach = FoodItem.create(name: "Spinach", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/spinach.jpg"), filename: "spinach.jpg", content_type: "image/jpg" } )
mushroom = FoodItem.create(name: "Mushroom", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/mushroom.jpg"), filename: "mushroom.jpg", content_type: "image/jpg" } )
garlic = FoodItem.create(name: "Garlic", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/garlic.jpg"), filename: "garlic.jpg", content_type: "image/jpg" } )
squash = FoodItem.create(name: "Squash", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/squash.jpg"), filename: "sqash.jpg", content_type: "image/jpg" } )
zucchini = FoodItem.create(name: "Zucchini", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/zucchini.jpg"), filename: "zucchini.jpg", content_type: "image/jpg" } )
corn = FoodItem.create(name: "Corn", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/corn.jpg"), filename: "corn.jpg", content_type: "image/jpg" } )
raddish = FoodItem.create(name: "Raddish", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/raddish.jpg"), filename: "raddish.jpg", content_type: "image/jpg" } )
celery = FoodItem.create(name: "Celery", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/celery.jpg"), filename: "celery.jpg", content_type: "image/jpg" } )
leek = FoodItem.create(name: "Leek", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/leek.jpg"), filename: "leek.jpg", content_type: "image/jpg" } )
capers = FoodItem.create(name: "Capers", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/capers.jpg"), filename: "capers.jpg", content_type: "image/jpg" } )
olives = FoodItem.create(name: "Olives", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/olives.jpg"), filename: "olives.jpg", content_type: "image/jpg" } )
parsley = FoodItem.create(name: "Parsley", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/parsley.jpg"), filename: "parsley.jpg", content_type: "image/jpg" } )
coriander = FoodItem.create(name: "Coriander", food_category_id: vegetables.id, food_image: { io: File.open("app/assets/images/coriander.jpg"), filename: "coriander.jpg", content_type: "image/jpg" } )

# CARBS:
rice = FoodItem.create(name: "Rice", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/rice.jpg"), filename: "rice.jpg", content_type: "image/jpg" })
pasta = FoodItem.create(name: "Pasta", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/pasta.jpg"), filename: "pasta.jpg", content_type: "image/jpg" })
quinoa = FoodItem.create(name: "Quinoa", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/quinoa.jpg"), filename: "quinoa.jpg", content_type: "image/jpg" })
couscous = FoodItem.create(name: "Couscous", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/couscous.jpg"), filename: "couscous.jpg", content_type: "image/jpg" })
barley = FoodItem.create(name: "Barley", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/barley.jpg"), filename: "barley.jpg", content_type: "image/jpg" })
oats = FoodItem.create(name: "Oats", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/oats.jpg"), filename: "oats.jpg", content_type: "image/jpg" })
cornmeal = FoodItem.create(name: "Cornmeal", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/cornmeal.jpg"), filename: "cornmeal.jpg", content_type: "image/jpg" })
buckwheat = FoodItem.create(name: "Buckwheat", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/buckwheat.jpg"), filename: "buckwheat.jpg", content_type: "image/jpg" })
millet = FoodItem.create(name: "Millet", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/millet.jpg"), filename: "millet.jpg", content_type: "image/jpg" })
polenta = FoodItem.create(name: "Polenta", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/polenta.jpg"), filename: "polenta.jpg", content_type: "image/jpg" })
tapioca = FoodItem.create(name: "Tapioca", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/tapioca.jpg"), filename: "tapioca.jpg", content_type: "image/jpg" })
semolina = FoodItem.create(name: "Semolina", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/semolina.jpg"), filename: "semolina.jpg", content_type: "image/jpg" })
plantain = FoodItem.create(name: "Plantain", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/plantain.jpg"), filename: "plantain.jpg", content_type: "image/jpg" })
cassava = FoodItem.create(name: "Cassava", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/cassava.jpg"), filename: "cassava.jpg", content_type: "image/jpg" })
yam = FoodItem.create(name: "Yam", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/yam.jpg"), filename: "yam.jpg", content_type: "image/jpg" })
bread = FoodItem.create(name: "Bread", food_category_id: carbs.id, food_image: { io: File.open("app/assets/images/bread.jpg"), filename: "bread.jpg", content_type: "image/jpg" })

# SPICES:
cumin = FoodItem.create(name: "Cumin", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/cumin.jpg"), filename: "cumin.jpg", content_type: "image/jpg" })
turmeric = FoodItem.create(name: "Turmeric", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/turmeric.jpg"), filename: "turmeric.jpg", content_type: "image/jpg" })
cinnamon = FoodItem.create(name: "Cinnamon", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/cinnamon.jpg"), filename: "cinnamon.jpg", content_type: "image/jpg" })
paprika = FoodItem.create(name: "Paprika", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/paprika.jpg"), filename: "paprika.jpg", content_type: "image/jpg" })
coriander = FoodItem.create(name: "Coriander", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/coriander.jpg"), filename: "coriander.jpg", content_type: "image/jpg" })
cayenne = FoodItem.create(name: "Cayenne", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/cayenne.jpg"), filename: "cayenne.jpg", content_type: "image/jpg" })
ginger = FoodItem.create(name: "Ginger", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/ginger.jpg"), filename: "ginger.jpg", content_type: "image/jpg" })
nutmeg = FoodItem.create(name: "Nutmeg", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/nutmeg.jpg"), filename: "nutmeg.jpg", content_type: "image/jpg" })
cardamom = FoodItem.create(name: "Cardamom", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/cardamom.jpg"), filename: "cardamom.jpg", content_type: "image/jpg" })
cloves = FoodItem.create(name: "Cloves", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/cloves.jpg"), filename: "cloves.jpg", content_type: "image/jpg" })
oregano = FoodItem.create(name: "Oregano", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/oregano.jpg"), filename: "oregano.jpg", content_type: "image/jpg" })
thyme = FoodItem.create(name: "Thyme", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/thyme.jpg"), filename: "thyme.jpg", content_type: "image/jpg" })
rosemary = FoodItem.create(name: "Rosemary", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/rosemary.jpg"), filename: "rosemary.jpg", content_type: "image/jpg" })
basil = FoodItem.create(name: "Basil", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/basil.jpg"), filename: "basil.jpg", content_type: "image/jpg" })
parsley = FoodItem.create(name: "Parsley", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/parsley.jpg"), filename: "parsley.jpg", content_type: "image/jpg" })
chili_powder = FoodItem.create(name: "Chili Powder", food_category_id: spices.id, food_image: { io: File.open("app/assets/images/cumin.jpg"), filename: "cumin.jpg", content_type: "image/jpg" })


# DAIRY AND CHEESE:




puts "Creating Chefs 🥑"

# CHEFS:
10.times do
  chef = Chef.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

# url = [https://upload.wikimedia.org/wikipedia/commons/8/89/Tomato_je.jpg]


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

recipefour = Recipe.create(
  name: "Spaghetti with Tomato sauce",
  duration: 30,
  chef_id: rand(1..10),
  portion_size: 1
)

recipefive = Recipe.create(
  name: "Andalusian gazpacho",
  duration: 35,
  chef_id: rand(1..10),
  portion_size: 1
)

recipesix = Recipe.create(
  name: "Bruschetta with Tomatoes and garlic",
  duration: 25,
  chef_id: rand(1..10),
  portion_size: 1
)


# RECIPE 1
RecipeFoodItem.create(food_item_id: aubergine.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: tomato.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: onion.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: paprika.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: garlic.id, recipe_id: recipeone.id)
RecipeFoodItem.create(food_item_id: pasta.id, recipe_id: recipeone.id)

# RECIPE 2
RecipeFoodItem.create(food_item_id: avocado.id, recipe_id: recipetwo.id)
# RecipeFoodItem.create(food_item_id: goat_cheese.id, recipe_id: recipetwo.id)
RecipeFoodItem.create(food_item_id: bread.id, recipe_id: recipetwo.id)

# RECIPE 3
RecipeFoodItem.create(food_item_id: tomato.id, recipe_id: recipethree.id)
RecipeFoodItem.create(food_item_id: basil.id, recipe_id: recipethree.id)
RecipeFoodItem.create(food_item_id: cayenne.id, recipe_id: recipethree.id)

puts "Creating Recipe food items 🥑"

# RECIPE 4
RecipeFoodItem.create(food_item_id: tomato.id, recipe_id: recipefour.id)
RecipeFoodItem.create(food_item_id: garlic.id, recipe_id: recipefour.id)
RecipeFoodItem.create(food_item_id: pasta.id, recipe_id: recipefour.id)

# RECIPE 5
RecipeFoodItem.create(food_item_id: tomato.id, recipe_id: recipefive.id)
RecipeFoodItem.create(food_item_id: garlic.id, recipe_id: recipefive.id)
RecipeFoodItem.create(food_item_id: onion.id, recipe_id: recipefive.id)
RecipeFoodItem.create(food_item_id: cumin.id, recipe_id: recipefive.id)


# RECIPE 6
RecipeFoodItem.create(food_item_id: tomato.id, recipe_id: recipesix.id)
RecipeFoodItem.create(food_item_id: garlic.id, recipe_id: recipesix.id)
RecipeFoodItem.create(food_item_id: bread.id, recipe_id: recipesix.id)


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

rewe = Shop.create(
  name: "Rewe",
  address: "Friedrichstraße 60, 10117, Berlin",
  opening_hours: "7:00am - 11:30pm"
)

edeka = Shop.create(
  name: "Edeka",
  address: "Friedrichstraße 67-70, 10117 Berlin",
  opening_hours: "7:00am - 11:30pm"
)

biomarkt = Shop.create(
  name: "BioMarkt",
  address: "Rudi-Dutschke-Straße 17, 10969 Berlin",
  opening_hours: "7:00am - 11:30pm"
)

user = User.create(
  first_name: "Sam",
  last_name: "Rogers",
  email: "user@gmail.com",
  password: "123456"
)
puts "We have a DB ✅ with #{FoodCategory.count} categories, #{FoodItem.count} food items, #{Chef.count}👨🏻‍🍳 chefs, #{Recipe.count} recipes, #{Shop.count} shops, #{User.count}"
puts "We have a DB ✅ with #{FoodCategory.count} categories, #{FoodItem.count} food items, #{RecipeFoodItem.count} food recipe items, #{Chef.count}👨🏻‍🍳 chefs, #{Recipe.count} recipes"
