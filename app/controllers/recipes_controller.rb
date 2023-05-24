class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
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
