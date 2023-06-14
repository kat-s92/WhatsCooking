class ApplicationController < ActionController::Base
  before_action :authenticate_user!


  helper_method :current_shopping_cart

  def current_shopping_cart
    current_user&.shopping_cart_id
  end

end
