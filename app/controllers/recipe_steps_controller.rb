class RecipeStepsController < ApplicationController
  def index
    @recipe_steps = RecipeStep.all

    @review = Review.new
    @recipe = Recipe.find(params[:recipe_id])
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
