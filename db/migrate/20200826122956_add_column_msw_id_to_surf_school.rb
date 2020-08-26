class AddColumnMswIdToSurfSchool < ActiveRecord::Migration[6.0]
  def change
    add_column :surf_schools, :msw_id, :integer
  end
end
