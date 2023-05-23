class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.where(food_category_id: params[:food_category_id])
    @categories = ["Ruby", "JavaScript", "CSS"]
  end
end
