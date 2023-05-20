class RecipeFoodItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :recipe
end
