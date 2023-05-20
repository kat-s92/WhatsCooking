class FoodItem < ApplicationRecord
  belongs_to :food_category
  has_many :missing_items
end
