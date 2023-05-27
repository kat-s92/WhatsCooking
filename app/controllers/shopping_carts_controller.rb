class ShoppingCartsController < ApplicationController
  def index
  end

  def show
    # @shopping_cart = current_user.Shopping_cart
    @tomato = Food_Item.find_by(name: "tomato")
    @missing_item = Missing_item.create(food_item_id: @tomato.id)
    @shopping_cart.new
  end
end
