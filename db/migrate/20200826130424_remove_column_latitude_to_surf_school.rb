class RemoveColumnLatitudeToSurfSchool < ActiveRecord::Migration[6.0]
  def change
    remove_column :surf_schools, :latitude
  end
end
