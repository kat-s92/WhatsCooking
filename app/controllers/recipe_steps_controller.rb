class RecipeStepsController < ApplicationController
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_steps = @recipe.recipe_steps
    @review = Review.new
    # raise
    @array_ratings = []
    @recipe.reviews.each do |review|
      @array_ratings << review.rating
    end
    @clean_array = @array_ratings.reject do |rating|
      rating == nil
    end
    @average = @clean_array.empty? ? 0 : (@clean_array.sum / @clean_array.length)
  end
end
