class RecipesController < ApplicationController
  def index
    selected_products = params[:food_item][:food_item].drop(1)
    recipe_food_items = RecipeFoodItem.where(food_item_id: selected_products)
    raise
    @recipes = Recipe.all
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
