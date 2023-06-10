class AddShoppingCartToMissingItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :missing_items, :shopping_cart, foreign_key: true
  end
end
