class RemoveLatFromShops < ActiveRecord::Migration[7.0]
  def change
    remove_column :shops, :lat, :float
  end
end
