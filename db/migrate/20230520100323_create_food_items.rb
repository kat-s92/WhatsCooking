class CreateFoodItems < ActiveRecord::Migration[7.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.references :food_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
