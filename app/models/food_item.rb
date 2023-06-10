class FoodItem < ApplicationRecord
  belongs_to :food_category
  has_many :recipe_food_item
  has_many :missing_items
  has_one_attached :food_image

  include PgSearch::Model
  pg_search_scope :search_by_name_and_food_category_id,
    against: [ :name, :food_category_id ],
    using: {
    tsearch: { prefix: true }
    }
  include PgSearch::Model
  multisearchable against: [:name, :food_category_id]
end
