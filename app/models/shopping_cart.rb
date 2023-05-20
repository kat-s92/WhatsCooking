class ShoppingCart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :missing_items
end
