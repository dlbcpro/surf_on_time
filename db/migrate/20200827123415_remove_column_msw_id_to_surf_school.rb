class RemoveColumnMswIdToSurfSchool < ActiveRecord::Migration[6.0]
  def change
    remove_column :surf_schools, :msw_id
  end
end
