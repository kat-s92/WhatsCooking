class SavedRecipesController < ApplicationController

  def index
    @saved_recipes = SavedRecipe.all
  end

  def new
    @saved_recipe = SavedRecipe.new
  end

  def create
    if SavedRecipe.where(user_id: current_user.id,
      recipe_id: params[:recipe_id]).exists?
      @recipe = Recipe.find(params[:recipe_id])
      redirect_to recipe_path(@recipe)
    else
      @recipe = Recipe.find(params[:recipe_id])
      @saved_recipe = SavedRecipe.new
      @saved_recipe.user = current_user
      # raise
      @saved_recipe.recipe = @recipe
      @saved_recipe.save
    end
    redirect_to recipe_path(@recipe)      # raise
  end

  def destroy
    @saved_recipe = SavedRecipe.find(params[:id])
    @recipe = @saved_recipe.recipe
    @saved_recipe.destroy
    redirect_to recipe_path(@recipe)
  end

  def saved_recipe_params
    params.require(:saved_recipe).permit(:recipe_id)
  end
end
