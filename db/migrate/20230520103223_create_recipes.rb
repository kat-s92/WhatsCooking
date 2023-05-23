class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :duration
      t.integer :portion_size, default: 1

      t.timestamps
    end
  end
end
