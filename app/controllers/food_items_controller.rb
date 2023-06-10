class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.where(food_category_id: params[:food_category_id]).first(21)
  end

  def search
    if params[:query].present?
      @food_items = FoodItem.search_by_name_and_food_category_id(params[:query])
    else
      @food_items = FoodItem.all
    end
  end
end
