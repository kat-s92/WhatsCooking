class MissingItemsController < ApplicationController

  def index
    @missing_items = MissingItems.all
  end

  def new
    @missing_item = MissingItem.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @shopping_cart = ShoppingCart.new(user: current_user)
    @shopping_cart.save
    current_user.shopping_cart_id = @shopping_cart.id
    raise
    @food_item = FoodItem.find(params[:recipe_id])
    @missing_item = MissingItem.new
    @missing_item.shopping_cart_id = @shopping_cart.id
    @missing_item.food_item_id = @food_item.id
    @missing_item.save
    redirect_to recipe_path(@recipe)
    
  end
end
