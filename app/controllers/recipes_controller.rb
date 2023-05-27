class RecipesController < ApplicationController
  def index
    selected_products = params[:food_item][:food_item].drop(1)
    recipe_food_items = RecipeFoodItem.where(food_item_id: selected_products)
    # Will work on this after with the TA - syntax error
    # sql_query = <<~SQL
    #   SELECT COUNT (food_item_id), recipe_id
    #   FROM recipe_food_items
    #   GROUP BY recipe_id
    # SQL
    # raise
    @recipes = Recipe.all # Will need to do this way once we have more recipes with reviews
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
