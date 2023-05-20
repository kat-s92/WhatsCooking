class FoodItem < ApplicationRecord
  belongs_to :food_category
  has_many :recipe_food_item
end
