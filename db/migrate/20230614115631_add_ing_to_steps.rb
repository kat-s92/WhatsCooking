class AddIngToSteps < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_steps, :ingredients, :text, array: true, default: []
  end
end
