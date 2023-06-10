class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.where(food_category_id: params[:food_category_id]).first(21)
  end

  def search
    @food_items = FoodItem.all
      if params[:query].present?
      @food_items_id = FoodItem.search_by_name_and_food_category_id(params[:query]).pluck(:food_category_id)
      @food_items = FoodCategory.where(id: @food_items_id)
      end
  end
end
