class CreateMissingItems < ActiveRecord::Migration[7.0]
  def change
    create_table :missing_items do |t|
      t.references :food_item, null: false, foreign_key: true
      t.references :shopping_cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
