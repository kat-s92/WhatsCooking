class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :saved_recipes
  has_many :recipe_food_item
end
