class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :saved_recipes
end
