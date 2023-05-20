class CreateRecipeFoodItems < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_food_items do |t|
      t.references :food_item, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
