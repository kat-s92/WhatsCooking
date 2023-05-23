class AddChefForeignKeyToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipes, :chef, foreign_key: true
  end
end
