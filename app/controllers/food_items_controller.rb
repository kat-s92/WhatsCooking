class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.where(food_category_id: params[:food_category_id]).first(9)

    # Remove .first(5) when styling is complete
  end
end
