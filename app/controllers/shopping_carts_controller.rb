class ShoppingCartsController < ApplicationController
  def index


  end

  def show
    # @shopping_cart = current_user.Shopping_cart
    # @tomato = FoodItem.find_by(name: "tomato")
    # @missing_item = MissingItem.create(food_item: @tomato)
    @missing_items = MissingItem.all
    
    @shops = Shop.all
    @shop = Shop.find(params[:id])
    if params[:filter]
      @shops = Shop.where(name: params[:filter])
    else
      @shops = Shop.all
    end
    @markers = @shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lon: shop.longitude,
        shop_info: render_to_string(partial:
                      "shops/popup", locals: { shop: }),
        marker_img: helpers.asset_url(params[:filter] ? "#{params[:filter].downcase}.png" : "cart.png")
      }
    end

    # if
    #   @shop == @shop.name("BioMarkt")
    #   @shops = Shop.where(name: "BioMarkt")
    # elsif @shop == @shop.name("Edeka")
    #   @shops = Shop.where(name: "Edeka")

    # else
    #   @shops = Shop.where(name: "Rewe")
    #   @markers = @shops.geocoded.map do |shop|
    #     {
    #       lat: shop.latitude,
    #       lon: shop.longitude,
    #       shop_info: render_to_string(partial:
    #                 "shops/popup", locals: { shop: }),
    #       marker_img: helpers.asset_url("cart.png")
    #     }
    #   end
    # end
  end
end
