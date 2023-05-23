class AddChefKeyToSavedChef < ActiveRecord::Migration[7.0]
  def change
    add_reference :saved_chefs, :chef, foreign_key: true
  end
end
