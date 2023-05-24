class RecipeStepsController < ApplicationController
  def index
    @recipe_steps = RecipeStep.all
  end
end
