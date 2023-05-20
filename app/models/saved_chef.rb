class SavedChef < ApplicationRecord
  belongs_to :user
  belongs_to :chef
end
