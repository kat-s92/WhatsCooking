class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @review = Review.new(review_params)
    @review.recipe_id = Review.find(params[:recipe_id])
    @review.user_id = current_user.id
    @review.save
    redirect_to reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
