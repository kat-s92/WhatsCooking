class FoodItem < ApplicationRecord
  belongs_to :food_category
  has_many :recipe_food_item
  has_many :missing_items
end
