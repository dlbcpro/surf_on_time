class RemoveColumnLongitudeToSurfSchool < ActiveRecord::Migration[6.0]
  def change
    remove_column :surf_schools, :longitude
  end
end
