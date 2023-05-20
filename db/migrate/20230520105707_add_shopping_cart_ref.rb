class AddShoppingCartRef < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :shopping_cart, foreign_key: true
  end
end
