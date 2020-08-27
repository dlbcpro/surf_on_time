class RemoveColumnAdressToSpot < ActiveRecord::Migration[6.0]
  def change
    remove_column :spots, :address
  end
end
