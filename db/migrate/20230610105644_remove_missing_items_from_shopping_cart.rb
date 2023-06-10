class RemoveMissingItemsFromShoppingCart < ActiveRecord::Migration[7.0]
  def change
    remove_column :shopping_carts, :missing_item_id
  end
end
