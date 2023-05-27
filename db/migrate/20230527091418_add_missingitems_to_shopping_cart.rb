class AddMissingitemsToShoppingCart < ActiveRecord::Migration[7.0]
  def change
    add_reference :shopping_carts, :missing_item, foreign_key: true
  end
end
