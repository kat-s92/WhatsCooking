class RecipeStepsController < ApplicationController
  def index
    @recipe_steps = RecipeStep.all
    @review = Review.new
    @recipe = Recipe.find(params[:recipe_id])
  end
end
