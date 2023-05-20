class SavedChefsController < ApplicationController
  def index
    @saved_chefs = SavedChefs.all
  end

  def new
    @saved_chef = SavedChef.new
  end

  def create
    @saved_chef = SavedChef.new(saved_chef_params)
    @saved_chef.user = current.user
    @saved_chef.chef = Chef.find(params[:id])
  end

  # def delete
  #   @saved_chef = SavedChef.find(params[id])
  #   @saved_chef.destroy
  # end

  private

  def saved_chef_params
    params.require(saved_chef).permit(:user_id, :chef_id)
  end
end
