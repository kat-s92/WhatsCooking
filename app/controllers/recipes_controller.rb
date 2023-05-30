class RecipesController < ApplicationController
  def index
    selected_products = params[:food_item][:your_selection].drop(1)
    recipe_food_items = RecipeFoodItem.group(:recipe_id).where(food_item_id: selected_products).count
    recipes_with_selected_products = recipe_food_items.select { |_recipe_id, count| count > 1 }
    recipes_with_selected_products = recipes_with_selected_products.keys
    @recipes = Recipe.find(recipes_with_selected_products)

    # Will need to do this way once we have more recipes with reviews
    # @ratings = []
    # @recipes.each do |recipe|
    #   reviews = recipe.reviews
    #   reviews.each do |review|
    #   @ratings << review.rating
    #   end
    # end

  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def missing_items
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    # storing in a varibale the selected ingredients
    # missing items = ingredients - selected items
  end
end
