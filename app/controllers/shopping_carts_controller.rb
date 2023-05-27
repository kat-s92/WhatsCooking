class ShoppingCartsController < ApplicationController
    def index
    end

  def show
    # @shopping_cart = current_user.Shopping_cart
    @tomato = FoodItem.find_by(name: "tomato")
    @missing_item = MissingItem.create(food_item: @tomato)
    @shopping_cart = ShoppingCart.new(user: current_user, missing_item_id: @missing_item)
    @shopping_cart.save
    @shops = Shop.all
    @markers = @shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lon: shop.longitude
      }
    end
  end
end
