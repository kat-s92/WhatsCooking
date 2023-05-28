class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :saved_recipes
  has_many :recipe_food_item
  has_many :reviews
  has_many :recipe_steps
  has_one_attached :photo
end
