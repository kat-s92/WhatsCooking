class AddShoppingCartIdToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :shopping_cart, foreign_key: true
  end
end
