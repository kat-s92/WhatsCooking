class RemoveLonFromShops < ActiveRecord::Migration[7.0]
  def change
    remove_column :shops, :lon, :float
  end
end
