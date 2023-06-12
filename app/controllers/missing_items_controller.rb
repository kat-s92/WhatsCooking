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

    missing_items_array = params[:recipe_food_item][:your_selection].drop(1)
    missing_items_array.each do |missing_food_item|
      @missing_item = MissingItem.new
      @missing_item.shopping_cart_id = 1
      @missing_item.food_item_id = missing_food_item
      @missing_item.save
    end

    redirect_to recipe_path(@recipe)




  end
end
