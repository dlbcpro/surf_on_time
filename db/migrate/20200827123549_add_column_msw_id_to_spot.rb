class AddColumnMswIdToSpot < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :msw_id, :integer
  end
end
