class Chef < ApplicationRecord
  has_many :recipes
  has_many :saved_chefs
end
