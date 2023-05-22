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
butter = FoodItem.create(name: "Butter", food_category_id: dairy.id)
cottage_cheese = FoodItem.create(name: "Cottage Cheese", food_category_id: dairyandcheese.id)
sour_cream = FoodItem.create(name: "Sour Cream", food_category_id: dairy.id)
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
edam = FoodItem.create(name: "Edam", food_category_id: cheese.id)
muenster = FoodItem.create(name: "Muenster", food_category_id: dairyandcheese.id)





puts "We have a DB ✅ with #{FoodCategory.count} categories, #{FoodItem.count} food items"
