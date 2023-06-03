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
    @review.recipe = Recipe.find(params[:recipe_id])
    @review.user_id = current_user.id
    @recipe = @review.recipe
    if @review.save
      redirect_to  recipe_path(params["recipe_id"].to_i)
    else
      render :new, status: :bad_request
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :user_id, :recipe_id)
  end
end
