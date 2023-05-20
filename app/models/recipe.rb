class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :recipe_food_item
end
