class SavedRecipesController < ApplicationController

  def index
    @saved_recipes = SavedRecipe.all
  end

  def new
    @saved_recipe = SavedRecipe.new
  end

  def create
    @saved_recipe = SavedRecipe.new(params[:id])
    @saved_recipe.user_id = current_user.id
    @saved_recipe.save
    redirect_to saved_recipes_path
  end

  def destroy
    @saved_recipe = SavedRecipe.find(params[:id])
    @saved_recipe.destroy
    redirect_to saved_recipes_path
  end
end
