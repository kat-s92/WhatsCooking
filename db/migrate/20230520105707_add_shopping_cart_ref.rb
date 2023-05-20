class AddShoppingCartRef < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :shopping_cart, foreign_key: true, default: nil
  end
end
