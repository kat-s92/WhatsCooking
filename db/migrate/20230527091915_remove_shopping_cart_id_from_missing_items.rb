class RemoveShoppingCartIdFromMissingItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :missing_items, :shopping_cart_id
  end
end
