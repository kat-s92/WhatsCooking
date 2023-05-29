class FoodItem < ApplicationRecord
  belongs_to :food_category
  has_many :recipe_food_item
  has_many :missing_items
  has_one_attached :food_image
end
