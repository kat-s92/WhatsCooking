class MissingItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :shopping_cart
end
