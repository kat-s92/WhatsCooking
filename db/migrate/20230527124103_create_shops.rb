class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :address
      t.string :opening_hours
      t.string :name
      t.float :lon
      t.float :lat

      t.timestamps
    end
  end
end
