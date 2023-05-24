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



end
