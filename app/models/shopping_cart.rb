class ShoppingCart < ApplicationRecord
  belongs_to :user
  has_many :missing_items
end
