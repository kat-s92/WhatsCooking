class RecipesController < ApplicationController
  def index
    # raise
    # selected_products = params[:food_item][:your_selection].drop(1)
    # create_cookies(products: selected_products)
    # recipe_food_items = RecipeFoodItem.group(:recipe_id).where(food_item_id: selected_products).count
    all_final_selected_products_array = $all_final_selected_products.flatten
    recipe_food_items = RecipeFoodItem.group(:recipe_id).where(food_item_id: all_final_selected_products_array).count
    recipes_with_selected_products = recipe_food_items.select { |_recipe_id, count| count > 1 }
    recipes_with_selected_products = recipes_with_selected_products.keys
    @recipes = Recipe.find(recipes_with_selected_products)
    # self.show
  end

  def show
    @user = current_user
    @recipe = Recipe.find(params[:id])
    all_ingredients = RecipeFoodItem.where(recipe_id: @recipe.id)
    all_ingredients_array = []
    all_ingredients.each do |ingredient|
      all_ingredients_array << ingredient.food_item_id
    end
    @selected_ingredients = $all_final_selected_products.flatten.map(&:to_i)
    @missing_ingredients = all_ingredients_array - @selected_ingredients


    @saved_recipe = SavedRecipe.where(user: current_user, recipe: @recipe).first
    @array_ratings = []

    get_reviews

    @clean_array = @array_ratings.reject do |rating|
      rating == nil
    end
    # @average = @clean_array.sum / @clean_array.length
    @average = @clean_array.empty? ? 0 : (@clean_array.sum.to_f / @clean_array.length).round(1)

    # create new shopping cart and add missing ingredients
    @shopping_cart = ShoppingCart.new
    @shopping_cart.user = @user
    @shopping_cart.save
    

  end

  private

  def get_reviews
    @recipe.reviews.each do |review|
      @array_ratings << review.rating
    end
  end
end
