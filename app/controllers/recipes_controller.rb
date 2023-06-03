class RecipesController < ApplicationController
  def index
    # raise
    # selected_products = params[:food_item][:your_selection].drop(1)
    # create_cookies(products: selected_products)
    # recipe_food_items = RecipeFoodItem.group(:recipe_id).where(food_item_id: selected_products).count
    all_final_selected_products_array = $all_final_selected_products.flatten
    recipe_food_items = RecipeFoodItem.group(:recipe_id).where(food_item_id: all_final_selected_products_array).count
    recipes_with_selected_products = recipe_food_items.select { |_recipe_id, count| count > 1 }
    recipes_with_selected_products = recipes_with_selected_products.keys
    @recipes = Recipe.find(recipes_with_selected_products)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @array_ratings = []
    @recipe.reviews.each do |review|
      @array_ratings << review.rating
    end
    @clean_array = @array_ratings.reject do |rating|
      rating == nil
    end
    # @average = @clean_array.sum / @clean_array.length
    @average = @clean_array.empty? ? 0 : (@clean_array.sum / @clean_array.length)
  end

  def missing_items
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_food_items
    # storing in a varibale the selected ingredients
    # missing items = ingredients - selected items
  end
end
