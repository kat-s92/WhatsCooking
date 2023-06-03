class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # :create_cookies


  # # def super_cookie(array)
  # #   cookies[:items] = array
  # #  p "Hi from super cookie #{cookies[:selected_food_items_array]}"
  # # end

  # def initalize
  #   cookies[:selected_food_items_array] ||= []
  # end

  # def create_cookies(options = {})
  #   array = options[:products]

  # if array.nil?
  #      cookies[:selected_food_items_array] = []
  #   else
  #    array.each do |selected_item|
  #       cookies[:selected_food_items_array] << selected_item
  #    end
  #  end




  #   p "Hi from cookies #{cookies[:selected_food_items_array]}"

  # end
end
