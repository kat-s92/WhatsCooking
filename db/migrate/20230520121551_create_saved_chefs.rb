class CreateSavedChefs < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_chefs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
