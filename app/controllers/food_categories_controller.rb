class FoodCategoriesController < ApplicationController
  def index
    if params[:food_item].present?

      @food_categories = FoodCategory.all
      selected_products = params[:food_item][:your_selection].drop(1)
      session[:final_selected_products] ||= []
      session[:final_selected_products] << selected_products
      $all_final_selected_products = session[:final_selected_products]
    else
      @food_categories = FoodCategory.all
    end
  end

  def search
    if params[:query].present?
      @food_items = FoodItem.search_by_name_and_food_category_id(params[:query])
    else
      @food_items = FoodItem.all
    end
  end
end
