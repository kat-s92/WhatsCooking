class MissingItemsController < ApplicationController
  # def index
  #   @missing_items = MissingItems.all
  # end

  def new
    @missing_item = MissingItem.new
  end

  def create
    @shopping_cart = ShoppingCart.create(user: current_user)

    current_user.shopping_cart_id = @shopping_cart.id
    @cart_id = current_user.shopping_cart_id
    params[:food_item][:your_selection]
    missing_items_array = params[:food_item][:your_selection].drop(1)
    missing_items_array.each do |missing_food_item|
      @missing_item = MissingItem.new
      @missing_item.shopping_cart_id = @shopping_cart.id
      @missing_item.food_item_id = missing_food_item
      @missing_item.save
    end

    @recipe = Recipe.find(params[:recipe_id])
    redirect_to recipe_path(@recipe)

  end
end
